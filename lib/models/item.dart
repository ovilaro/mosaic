import 'package:isar_community/isar.dart';
import 'package:mosaic/models/igdb_game.dart';
import 'package:mosaic/models/open_library_search_result.dart';

part 'item.g.dart';

enum ItemType { igdbGame, openlibraryBook }

enum ItemStatus { notStarted, inProgress, finished }

@collection
class Item {
  Id id = Isar.autoIncrement;

  IgdbGame? igdbGame;
  OpenLibrarySearchResultDoc? openLibraryBook;

  String apiId = "";

  @enumerated
  ItemType itemType = ItemType.igdbGame;

  @enumerated
  ItemStatus itemStatus = ItemStatus.notStarted;

  bool needsDetailRequest = false;

  @ignore
  bool isAdded = false;

  @ignore
  String get name {
    if (igdbGame != null) {
      return igdbGame!.name ?? "no name";
    }
    return "no name";
  }

  @ignore
  String get shortDesc {
    if (igdbGame != null) {
      var str = "🎮";

      if (igdbGame!.gameType != null) {
        str += " ";
        str += igdbGame!.gameType!.type!;
      }

      if (igdbGame!.firstReleaseDate != null) {
        var releaseDate = DateTime.fromMillisecondsSinceEpoch(
          igdbGame!.firstReleaseDate! * 1000,
        );
        str += " ";
        str += "(${releaseDate.year})";
      }

      return str;
    }
    return "";
  }

  @ignore
  String? get thumb {
    if (igdbGame != null) {
      if (igdbGame!.cover != null) {
        var fullUrl = "https:${igdbGame!.cover!.url}";
        return fullUrl.replaceFirst("thumb", "thumb_2x");
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
    return null;
  }

  @ignore
  String? get summary {
    if (igdbGame != null) {
      if (igdbGame!.summary != null) {
        return igdbGame!.summary;
      }
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
