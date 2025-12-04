import 'package:mosaic/models/item.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static final Preferences _instance = Preferences._internal();
  factory Preferences() => _instance;
  Preferences._internal();
  static Preferences get instance => _instance;

  late SharedPreferences prefs;

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
  }

  bool getCategoryEnabled(ItemCategory category) {
    String key = "${category.toString()}Enabled";
    return prefs.getBool(key) ?? true;
  }

  Future<bool> setCategoryEnabled(ItemCategory category, bool value) async {
    String key = "${category.toString()}Enabled";
    return await prefs.setBool(key, value);
  }

  bool getFilterEnabled(ItemCategory category, FilterRange filterRange) {
    String key = "${category.toString()}/${filterRange.toString()}Enabled";
    return prefs.getBool(key) ?? true;
  }

  Future<bool> setFilterEnabled(
    ItemCategory category,
    FilterRange filterRange,
    bool value,
  ) async {
    String key = "${category.toString()}/${filterRange.toString()}Enabled";
    return await prefs.setBool(key, value);
  }

  ItemOrder getItemOrder() {
    String key = "ItemOrder";
    String? str = prefs.getString(key);
    if (str == null) {
      return ItemOrder.addedAsc;
    }
    return ItemOrder.values.firstWhere((i) => i.toString() == str);
  }

  Future<bool> setItemOrder(ItemOrder itemOrder) async {
    String key = "ItemOrder";
    return await prefs.setString(key, itemOrder.toString());
  }
}
