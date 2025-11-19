import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/services/database.dart';
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

    for (var result in searchResults) {
      result.isAdded = await isApiIdAdded(result);
    }

    notifyListeners();
  }

  void clearSearchResults() {
    searchResults.clear();
  }

  Future<bool> isApiIdAdded(Item item) async {
    return await Database.instance.isApiIdAdded(item);
  }

  addItem(Item item) async {
    await Database.instance.write(item);
    item.isAdded = true;
    notifyListeners();
  }

  deleteItemApiId(Item item) async {
    await Database.instance.deleteItemApiId(item);
    item.isAdded = false;
    notifyListeners();
  }

  // removeItem(int id) async {
  //   await Database.instance.delete(id);
  // }

  // Future<Item?> getItem(int id) async {
  //   return await Database.instance.get(id);
  // }
}
