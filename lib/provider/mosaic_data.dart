import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/services/igdb_service.dart';

class MosaicData extends ChangeNotifier {
  final IgdbService _igdbService = IgdbService();

  List<Item> searchResults = [];

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

  void clearSearchResults() {
    searchResults.clear();
  }
}
