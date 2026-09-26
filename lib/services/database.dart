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
      final key = await itemsBox.add(item);
      item.id = key;
      // Box.add stores the value before the key is known, so persist again now
      // that the assigned id is set — otherwise the stored copy keeps id = -1.
      await itemsBox.put(key, item);
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
    final item = itemsBox.get(id);
    if (item != null) {
      item.id = id;
    }
    return item;
  }

  Future<List<Item>> getAllItems() async {
    // The box key is the source of truth for `id`; stamp it on read so items
    // never surface with a stale/duplicate id.
    return itemsBox.toMap().entries.map((entry) {
      final item = entry.value;
      item.id = entry.key as int;
      return item;
    }).toList();
  }
}
