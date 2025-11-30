import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/services/database.dart';
import 'package:mosaic/services/igdb_service.dart';
import 'package:mosaic/services/open_library_service.dart';

class MosaicData extends ChangeNotifier {
  final IgdbService _igdbService = IgdbService();
  final OpenLibraryService _openLibraryService = OpenLibraryService();

  List<Item> searchResults = [];
  List<Item> allItems = [];

  bool searching = false;

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

    List<Item> totalResults = [];

    searching = true;
    notifyListeners();

    var gameResults = await _igdbService.search(str);
    var bookResults = await _openLibraryService.search(str);

    int maxIndex = gameResults.length;
    if (maxIndex < bookResults.length) {
      maxIndex = bookResults.length;
    }

    for (int i = 0; i < maxIndex; i++) {
      if (i < gameResults.length) {
        totalResults.add(gameResults[i]);
      }
      if (i < bookResults.length) {
        totalResults.add(bookResults[i]);
      }
    }

    for (var result in totalResults) {
      result.isAdded = await Database.instance.isApiIdAdded(result);
    }

    searchResults = totalResults;

    searching = false;
    notifyListeners();
  }

  void clearSearchResults() {
    searchResults.clear();
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
        case ItemType.book:
          if (item.openLibraryBook != null) {
            var workOlid = item.openLibraryBook!.key!.replaceAll("/works/", "");
            var workDetails = await _openLibraryService.getWorkDetails(
              workOlid,
            );
            item.openLibraryWork = workDetails;

            var edition = item.openLibraryBook!.editions?.docs?.firstOrNull;
            if (edition != null) {
              var editionOlid = edition.key!.replaceAll("/books/", "");
              var editionDetails = await _openLibraryService.getEditionDetails(
                editionOlid,
              );
              item.openLibraryEdition = editionDetails;
            }
          }

          item.needsDetailRequest = false;
          await addOrUpdateItem(item);
          notifyListeners();
          return;
        default:
      }
    }
  }
}
