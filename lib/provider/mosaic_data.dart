import 'package:flutter/material.dart';
import 'package:mosaic/services/igdb/igdb_service.dart';
import 'package:mosaic/services/igdb/models/igdb_game.dart';

class MosaicData extends ChangeNotifier {
  final IgdbService _igdbService = IgdbService();

  List<IgdbGame> searchResults = [];

  Future<void> search(String str) async {
    if (str.isEmpty) {
      searchResults.clear();
      notifyListeners();
      return;
    }

    var results = await _igdbService.search(str);

    if (results == null) {
      return;
    }

    searchResults = results;
    notifyListeners();
  }
}
