import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/services/database.dart';
import 'package:mosaic/services/igdb_service.dart';

class MosaicData extends ChangeNotifier {
  final IgdbService _igdbService = IgdbService();

  List<Item> searchResults = [];
  List<Item> allItems = [];

  init() async {
    await Database.instance.init(onData);
  }

  void onData(void event) {
    readItems();
  }

  Future<void> readItems() async {
    allItems.clear();
    allItems = await Database.instance.getAllItems();
    notifyListeners();
  }

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

  addOrUpdateItem(Item item) async {
    await Database.instance.write(item);
    item.isAdded = true;
    notifyListeners();
  }

  deleteItemApiId(Item item) async {
    await Database.instance.deleteItemApiId(item);
    item.isAdded = false;
    notifyListeners();
  }

  List<Item> getItemsWithStatus(ItemStatus status) {
    return allItems.where((i) => i.itemStatus == status).toList();
  }

  // removeItem(int id) async {
  //   await Database.instance.delete(id);
  // }

  Item? getItem(int id) {
    return Database.instance.get(id);
  }

  Future<void> updateDetailInfoIfNeeded(Item item) async {
    if (item.needsDetailRequest) {
      switch (item.itemType) {
        case ItemType.openlibraryBook:
          // TODO: fake await
          await Future.delayed(Duration(seconds: 1), () async {
            item.needsDetailRequest = false;
            await addOrUpdateItem(item);
            notifyListeners();
            return;
          });
          break;
        default:
      }
    }
  }
}
