import 'package:flutter/material.dart';
import 'package:isar_community/isar.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:mosaic/models/igdb_game.dart';
import 'package:mosaic/models/open_library_edition.dart';
import 'package:mosaic/models/open_library_search.dart';
import 'package:mosaic/models/open_library_work.dart';

part 'item.g.dart';

enum ItemType { game, book }

enum ItemStatus { notStarted, inProgress, finished }

@collection
class Item {
  Id id = Isar.autoIncrement;

  IgdbGame? igdbGame;

  OpenLibrarySearchDoc? openLibraryBook;
  OpenLibraryWork? openLibraryWork;
  OpenLibraryEdition? openLibraryEdition;

  String apiId = "";

  @enumerated
  ItemType itemType = ItemType.game;

  @enumerated
  ItemStatus itemStatus = ItemStatus.notStarted;

  bool needsDetailRequest = false;
  bool ignoreImages = false;

  DateTime dateTimeCreated = DateTime.timestamp();
  DateTime dateTimeModified = DateTime.timestamp();

  @ignore
  bool isAdded = false;

  @ignore
  IconData get typeIcon {
    switch (itemType) {
      case ItemType.game:
        return Symbols.videogame_asset;
      case ItemType.book:
        return Symbols.book_2;
    }
  }

  @ignore
  String get name {
    var nullStr = "no title";

    if (igdbGame != null) {
      return igdbGame!.name ?? nullStr;
    }

    if (openLibraryBook != null) {
      var edition = openLibraryBook!.editions?.docs?.firstOrNull;
      if (edition != null) {
        var str = "";
        if (edition.title != null) {
          str += edition.title!;
        }
        if (edition.subtitle != null) {
          str += ": ${edition.subtitle!}";
        }
        return str.isEmpty ? nullStr : str;
      }

      return openLibraryBook!.title ?? nullStr;
    }

    return nullStr;
  }

  @ignore
  String get shortDesc {
    if (igdbGame != null) {
      var str = "";

      if (igdbGame!.gameType != null) {
        str += " ${igdbGame!.gameType!.type!}";
      }

      if (igdbGame!.firstReleaseDate != null) {
        var releaseDate = DateTime.fromMillisecondsSinceEpoch(
          igdbGame!.firstReleaseDate! * 1000,
        );
        str += " (${releaseDate.year})";
      }

      return str;
    }

    if (openLibraryBook != null) {
      var str = "";

      var edition = openLibraryBook!.editions?.docs?.firstOrNull;
      if (edition != null) {
        if (edition.authorName != null) {
          for (var author in edition.authorName!) {
            str += " $author,";
          }
        }
        if (edition.publishDate != null) {
          str +=
              " (${edition.publishDate!.firstOrNull ?? "no publication date"})";
        }
        return str;
      }

      if (openLibraryBook!.authorName != null) {
        for (var author in openLibraryBook!.authorName!) {
          str += " $author,";
        }
      }
      str += " (${openLibraryBook!.firstPublishYear ?? "no publication date"})";

      return str;
    }

    return "no short description";
  }

  @ignore
  String? get thumb {
    if (igdbGame != null) {
      if (igdbGame!.cover != null) {
        var fullUrl = "https:${igdbGame!.cover!.url}";
        return fullUrl.replaceFirst("thumb", "thumb_2x");
      }
    }

    if (openLibraryBook != null) {
      var edition = openLibraryBook!.editions?.docs?.firstOrNull;
      if (edition != null) {
        if (edition.key != null) {
          var editionOlid = edition.key!.replaceAll("/books/", "");
          return "https://covers.openlibrary.org/b/olid/$editionOlid-S.jpg?default=false";
        }
      }
      if (openLibraryBook!.key != null) {
        var workOlid = openLibraryBook!.key!.replaceAll("/works/", "");
        return "https://covers.openlibrary.org/b/olid/$workOlid-S.jpg?default=false";
      }
    }

    return null;
  }

  @ignore
  String? get coverBig {
    if (igdbGame != null) {
      if (igdbGame!.cover != null) {
        var fullUrl = "https:${igdbGame!.cover!.url}";
        return fullUrl.replaceFirst("thumb", "cover_big_2x");
      }
    }

    if (openLibraryBook != null) {
      var edition = openLibraryBook!.editions?.docs?.firstOrNull;
      if (edition != null) {
        if (edition.key != null) {
          var editionOlid = edition.key!.replaceAll("/books/", "");
          return "https://covers.openlibrary.org/b/olid/$editionOlid-L.jpg?default=false";
        }
      }
      if (openLibraryBook!.key != null) {
        var workOlid = openLibraryBook!.key!.replaceAll("/works/", "");
        return "https://covers.openlibrary.org/b/olid/$workOlid-L.jpg?default=false";
      }
    }

    return null;
  }

  @ignore
  String? get summary {
    if (igdbGame != null) {
      if (igdbGame!.summary != null) {
        return igdbGame!.summary;
      }
    }

    if (openLibraryWork != null) {
      return openLibraryWork!.description;
    }

    return null;
  }

  @ignore
  String? get story {
    if (igdbGame != null) {
      if (igdbGame!.storyline != null) {
        return igdbGame!.storyline;
      }
    }
    return null;
  }

  @ignore
  Map<String, String> get itemInfo {
    Map<String, String> map = {};
    if (igdbGame != null) {
      if (igdbGame!.platforms != null && igdbGame!.platforms!.isNotEmpty) {
        String str = "";
        for (var i = 0; i < igdbGame!.platforms!.length; i++) {
          var info = igdbGame!.platforms![i];
          if (i > 0) {
            str += "\n";
          }
          str += info.name!;
        }
        map["Platforms"] = str;
      }
      if (igdbGame!.gameModes != null && igdbGame!.gameModes!.isNotEmpty) {
        String str = "";
        for (var i = 0; i < igdbGame!.gameModes!.length; i++) {
          var info = igdbGame!.gameModes![i];
          if (i > 0) {
            str += "\n";
          }
          str += info.name!;
        }
        map["Game modes"] = str;
      }
      if (igdbGame!.genres != null && igdbGame!.genres!.isNotEmpty) {
        String str = "";
        for (var i = 0; i < igdbGame!.genres!.length; i++) {
          var info = igdbGame!.genres![i];
          if (i > 0) {
            str += "\n";
          }
          str += info.name!;
        }
        map["Genres"] = str;
      }
      if (igdbGame!.themes != null && igdbGame!.themes!.isNotEmpty) {
        String str = "";
        for (var i = 0; i < igdbGame!.themes!.length; i++) {
          var info = igdbGame!.themes![i];
          if (i > 0) {
            str += "\n";
          }
          str += info.name!;
        }
        map["Themes"] = str;
      }
    }

    return map;
  }
}
