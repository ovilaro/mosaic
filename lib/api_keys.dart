import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiKeys {
  static String get igdmClientId {
    final key = dotenv.env['IGDB_CLIENT_ID'];
    if (key == null || key.isEmpty) {
      throw StateError('IGDB_CLIENT_ID not set in .env file');
    }
    return key;
  }

  static String get igdmClientSecret {
    final key = dotenv.env['IGDB_CLIENT_SECRET'];
    if (key == null || key.isEmpty) {
      throw StateError('IGDB_CLIENT_SECRET not set in .env file');
    }
    return key;
  }

  static String get openLibraryUserAgent {
    final ua = dotenv.env['OPEN_LIBRARY_USER_AGENT'];
    if (ua == null || ua.isEmpty) {
      throw StateError('OPEN_LIBRARY_USER_AGENT not set in .env file');
    }
    return ua;
  }
}
