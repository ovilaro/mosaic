import 'package:isar_community/isar.dart';
import 'package:mosaic/models/igdb_game.dart';

part 'item.g.dart';

enum ItemType { igdbGame }

enum ItemStatus { inProgress, notStarted, finished }

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
