import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:mosaic/hive/hive_registrar.g.dart';
import 'package:mosaic/models/item.dart';

class Database {
  static final Database _instance = Database._internal();
  factory Database() => _instance;
  Database._internal();
  static Database get instance => _instance;

  static const String _boxName = 'items';

  bool _initialized = false;
  late Box<Item> itemsBox;

  Future<void> init(Function(void event) watcher) async {
    if (_initialized) return;

    await Hive.initFlutter();
    Hive.registerAdapters();

    itemsBox = await Hive.openBox<Item>(_boxName);
    itemsBox.watch().listen((_) => watcher(null));

    _initialized = true;
  }

  Future<void> write(Item item) async {
    if (item.id >= 0 && itemsBox.containsKey(item.id)) {
      await itemsBox.put(item.id, item);
    } else {
      item.id = await itemsBox.add(item);
    }
  }

  Future<bool> isApiIdAdded(Item item) async {
    for (final result in itemsBox.values) {
      if (result.apiId == item.apiId &&
          result.itemCategory == item.itemCategory) {
        return true;
      }
    }
    return false;
  }

  Future<void> deleteItemApiId(Item item) async {
    final keysToDelete = <dynamic>[];
    for (final entry in itemsBox.toMap().entries) {
      final result = entry.value;
      if (result.apiId == item.apiId &&
          result.itemCategory == item.itemCategory) {
        keysToDelete.add(entry.key);
      }
    }
    if (keysToDelete.isNotEmpty) {
      await itemsBox.deleteAll(keysToDelete);
    }
  }

  Item? get(int id) {
    return itemsBox.get(id);
  }

  Future<List<Item>> getAllItems() async {
    return itemsBox.values.toList();
  }
}
