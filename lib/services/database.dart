import 'package:isar_community/isar.dart';
import 'package:mosaic/models/item.dart';
import 'package:path_provider/path_provider.dart';

class Database {
  static final Database _instance = Database._internal();
  factory Database() => _instance;
  Database._internal();
  static Database get instance => _instance;

  late Isar isar;

  Future<void> init(Function(void event) whatcher) async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([ItemSchema], directory: dir.path);

    Stream<void> itemChanged = isar.items.watchLazy();

    itemChanged.listen(whatcher);
  }

  Future<void> write(Item item) async {
    await isar.writeTxn(() async {
      await isar.items.put(item); // insert & update
    });
  }

  Future<bool> isApiIdAdded(Item item) async {
    List<Item> results = await isar.items
        .filter()
        .apiIdEqualTo(item.apiId)
        .findAll();
    // check item type due diferents apis can have same id maybe?
    for (var result in results) {
      if (result.itemType == item.itemType) {
        return true;
      }
    }
    return false;
  }

  Future<void> deleteItemApiId(Item item) async {
    List<Item> results = await isar.items
        .filter()
        .apiIdEqualTo(item.apiId)
        .findAll();
    // check item type due diferents apis can have same id maybe?
    for (var result in results) {
      if (result.itemType == item.itemType) {
        await isar.writeTxn(() async {
          await isar.items.delete(result.id);
        });
      }
    }
  }

  // Future<void> delete(int id) async {
  //   await isar.writeTxn(() async {
  //     await isar.items.delete(id);
  //   });
  // }

  // Future<Item?> get(int id) async {
  //   return await isar.items.get(id);
  // }

  Future<List<Item>> getAllItems() async {
    return isar.items.where().findAll();
  }
}
