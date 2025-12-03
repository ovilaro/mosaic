import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:mosaic/services/database.dart';
import 'package:mosaic/services/igdb_service.dart';
import 'package:mosaic/services/open_library_service.dart';
import 'package:mosaic/services/preferences.dart';

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

    List<Item> gameResults = [];
    List<Item> bookResults = [];

    if (getFilterEnabled(ItemCategory.game, FilterRange.search)) {
      gameResults = await _igdbService.search(str);
    }

    if (getFilterEnabled(ItemCategory.book, FilterRange.search)) {
      bookResults = await _openLibraryService.search(str);
    }

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
    List<ItemCategory> categoriesToShow = [];
    if (getFilterEnabled(ItemCategory.game, FilterRange.list)) {
      categoriesToShow.add(ItemCategory.game);
    }
    if (getFilterEnabled(ItemCategory.book, FilterRange.list)) {
      categoriesToShow.add(ItemCategory.book);
    }

    return allItems
        .where(
          (i) =>
              i.itemStatus == status &&
              categoriesToShow.contains(i.itemCategory),
        )
        .toList();
  }

  // removeItem(int id) async {
  //   await Database.instance.delete(id);
  // }

  Item? getItem(int id) {
    return Database.instance.get(id);
  }

  Future<void> updateDetailInfoIfNeeded(Item item) async {
    if (item.needsDetailRequest) {
      switch (item.itemCategory) {
        case ItemCategory.book:
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

  Future<void> updateItemStatus(Item item, ItemStatus status) async {
    item.itemStatus = status;
    item.dateTimeModified = DateTime.timestamp();
    await addOrUpdateItem(item);
  }

  bool getCategoryEnabled(ItemCategory category) {
    return Preferences.instance.getCategoryEnabled(category);
  }

  setCategoryEnabled(ItemCategory category, bool value) async {
    await Preferences.instance.setCategoryEnabled(category, value);
    notifyListeners();
  }

  bool getFilterEnabled(ItemCategory category, FilterRange filterRange) {
    return Preferences.instance.getFilterEnabled(category, filterRange);
  }

  Future<bool> setFilterEnabled(
    ItemCategory category,
    FilterRange filterRange,
    bool value,
  ) async {
    bool result = await Preferences.instance.setFilterEnabled(
      category,
      filterRange,
      value,
    );
    if (result) {
      notifyListeners();
    }
    return result;
  }

  bool isAnyFilterEnabled(FilterRange filterRange) {
    for (var category in ItemCategory.values) {
      if (!getFilterEnabled(category, filterRange)) return true;
    }
    return false;
  }
}
