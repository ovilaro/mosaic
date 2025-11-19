import 'package:isar_community/isar.dart';
import 'package:mosaic/models/item.dart';
import 'package:path_provider/path_provider.dart';

class Database {
  static final Database _instance = Database._internal();
  factory Database() => _instance;
  Database._internal();
  static Database get instance => _instance;

  late Isar isar;

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([ItemSchema], directory: dir.path);
  }

  //   Future<List<Item>> getAllItems() async {
  //     return isar.items.where().findAll();
  //   }
}
