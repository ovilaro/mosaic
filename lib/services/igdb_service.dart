import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mosaic/api_keys.dart';
import 'package:mosaic/models/igdb/igdb_auth_result.dart';
import 'package:mosaic/models/igdb/igdb_game.dart';
import 'package:mosaic/models/item.dart';

class IgdbService {
  static const Duration _intervalBetweenRequestsInMs = Duration(
    milliseconds: 250,
  );
  static const Duration _requestTimeout = Duration(seconds: 10);
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

    final response = await _post(url, action: "auth");
    if (response == null) return false;

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

  Future<List<Item>> search(String str) async {
    List<Item> emptyList = [];
    if (_latestRequest != null) {
      if (DateTime.timestamp()
              .difference(_latestRequest!)
              .compareTo(_intervalBetweenRequestsInMs) <
          0) {
        debugPrint("Ignoring request, interval too short");
        return emptyList;
      }
    }

    var authResult = await _auth();
    if (!authResult) {
      return emptyList;
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
        'platforms.name, summary, storyline, themes.name, '
        'game_type.type; limit 100;';

    _latestRequest = DateTime.timestamp();
    final response = await _post(
      url,
      body: body,
      headers: headers,
      action: "games",
    );
    if (response == null) return emptyList;

    if (response.statusCode == 200) {
      var igdbGames = igdbGameFromJson(response.body);
      return _convertToItems(igdbGames);
    } else {
      debugPrint(
        "[IGDB]Error games status code: ${response.statusCode},"
        " body: ${response.body}",
      );
      return emptyList;
    }
  }

  List<Item> _convertToItems(List<IgdbGame> igdbGames) {
    List<Item> items = [];
    for (var game in igdbGames) {
      var item = Item();
      item.itemCategory = ItemCategory.game;
      item.igdbGame = game;
      item.apiId = game.id!.toString(); // game.id should not be null
      items.add(item);
    }
    return items;
  }

  /// Performs an IGDB POST with a bounded timeout and logs (rather than throws)
  /// network failures, returning `null` so callers can degrade gracefully.
  Future<http.Response?> _post(
    Uri url, {
    Object? body,
    Map<String, String>? headers,
    required String action,
  }) async {
    try {
      return await http
          .post(url, body: body, headers: headers)
          .timeout(_requestTimeout);
    } on TimeoutException {
      debugPrint(
        "[IGDB] $action request timed out after ${_requestTimeout.inSeconds}s",
      );
    } on http.ClientException catch (e) {
      debugPrint("[IGDB] $action connection failed: ${e.message}");
    } on SocketException catch (e) {
      debugPrint("[IGDB] $action socket error: ${e.message}");
    } catch (e) {
      debugPrint("[IGDB] $action request failed: $e");
    }
    return null;
  }
}
