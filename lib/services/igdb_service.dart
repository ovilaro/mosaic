import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mosaic/api_keys.dart';
import 'package:mosaic/services/igdb_models/igdb_auth_result.dart';

class IgdbService {
  static const String _authHost = "id.twitch.tv";
  static const String _authMethod = "/oauth2/token";

  static IgdbAuthResult? _igdbAuthResult;

  static Future<bool> _auth() async {
    if (_igdbAuthResult != null && _igdbAuthResult!.isTokenValid) {
      return true;
    }

    var uri = Uri.http(_authHost, _authMethod, {
      'cliend_id': ApiKeys.igdmClientId,
      'client_secret': ApiKeys.igdmClientSecret,
      'grant_type': "client_credentials",
    });

    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      _igdbAuthResult = igdbAuthResultFromJson(response.body);
      return true;
    } else {
      debugPrint(
        "[IGDB]Error auth status code: ${response.statusCode}, body: ${response.body}",
      );
      return false;
    }
  }
}
