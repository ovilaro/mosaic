import 'package:isar_community/isar.dart';
import 'package:mosaic/models/igdb_game.dart';

part 'item.g.dart';

@collection
class Item {
  Id id = Isar.autoIncrement;

  IgdbGame? igdbGame;

  String get name {
    if (igdbGame != null) {
      return igdbGame!.name ?? "no name";
    }
    return "no name";
  }
}
