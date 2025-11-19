import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mosaic/api_keys.dart';
import 'package:mosaic/models/igdb_auth_result.dart';
import 'package:mosaic/models/igdb_game.dart';
import 'package:mosaic/models/item.dart';

class IgdbService {
  static const Duration _intervalBetweenRequestsInMs = Duration(
    milliseconds: 250,
  );
  DateTime? _latestRequest;
  IgdbAuthResult? _igdbAuthResult;

  Future<bool> _auth() async {
    if (_igdbAuthResult != null && _igdbAuthResult!.isTokenValid) {
      return true;
    }

    Uri url = Uri.https("id.twitch.tv", "/oauth2/token", {
      'client_id': ApiKeys.igdmClientId,
      'client_secret': ApiKeys.igdmClientSecret,
      'grant_type': "client_credentials",
    });

    http.Response response = await http.post(url);

    if (response.statusCode == 200) {
      _igdbAuthResult = igdbAuthResultFromJson(response.body);
      return true;
    } else {
      debugPrint(
        "[IGDB]Error auth status code: ${response.statusCode},"
        " body: ${response.body}",
      );
      return false;
    }
  }

  Future<List<Item>?> search(String str) async {
    if (_latestRequest != null) {
      if (DateTime.timestamp()
              .difference(_latestRequest!)
              .compareTo(_intervalBetweenRequestsInMs) <
          0) {
        debugPrint("Ignoring request, interval too short");
        return null;
      }
    }

    var authResult = await _auth();
    if (!authResult) {
      return null;
    }

    Uri url = Uri.https("api.igdb.com", "/v4/games");

    var headers = {
      'Accept': 'application/json',
      'Client-ID': ApiKeys.igdmClientId,
      'Authorization': 'Bearer ${_igdbAuthResult!.accessToken}',
    };

    String body =
        'search "$str";\n'
        'fields name, cover.url, first_release_date, game_modes.name, genres.name, '
        'platforms.name, platforms.abbreviation, summary, storyline, themes.name, '
        'game_type.type; limit 50;';

    _latestRequest = DateTime.timestamp();
    http.Response response = await http.post(url, body: body, headers: headers);

    if (response.statusCode == 200) {
      var igdbGames = igdbGameFromJson(response.body);
      return _convertToItems(igdbGames);
    } else {
      debugPrint(
        "[IGDB]Error games status code: ${response.statusCode},"
        " body: ${response.body}",
      );
      return null;
    }
  }

  List<Item> _convertToItems(List<IgdbGame> igdbGames) {
    List<Item> items = [];
    for (var game in igdbGames) {
      var item = Item();
      item.igdbGame = game;
      item.apiId = game.id ?? -1;
      item.itemType = ItemType.igdbGame;
      items.add(item);
    }
    return items;
  }
}
