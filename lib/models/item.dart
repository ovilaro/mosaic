import 'package:isar_community/isar.dart';
import 'package:mosaic/models/igdb_game.dart';

part 'item.g.dart';

enum ItemType { igdbGame }

enum ItemStatus { notStarted, inProgress, finished }

@collection
class Item {
  Id id = Isar.autoIncrement;

  IgdbGame? igdbGame;

  int apiId = -1;

  @enumerated
  ItemType itemType = ItemType.igdbGame;

  @enumerated
  ItemStatus itemStatus = ItemStatus.notStarted;

  @ignore
  bool isAdded = false;

  String get name {
    if (igdbGame != null) {
      return igdbGame!.name ?? "no name";
    }
    return "no name";
  }

  String get shortDesc {
    if (igdbGame != null) {
      var str = "🎮";

      if (igdbGame!.gameType != null) {
        str += " ";
        str += igdbGame!.gameType!.type!;
      }

      if (igdbGame!.releaseDate != null) {
        str += " ";
        str += "(${igdbGame!.releaseDate!.year})";
      }

      return str;
    }
    return "";
  }

  String? get summary {
    if (igdbGame != null) {
      if (igdbGame!.summary != null) {
        return igdbGame!.summary;
      }
    }
    return null;
  }

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

  String? get thumb {
    if (igdbGame != null) {
      return igdbGame!.thumb;
    }
    return null;
  }

  String? get coverSmall {
    if (igdbGame != null) {
      return igdbGame!.coverSmall;
    }
    return null;
  }

  String? get coverBig {
    if (igdbGame != null) {
      return igdbGame!.coverBig;
    }
    return null;
  }
}
