import 'package:mosaic/models/item.dart';
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
    return prefs.getBool("${category.toString()}Enabled") ?? true;
  }

  Future<void> setCategoryEnabled(ItemCategory category, bool value) async {
    await prefs.setBool("${category.toString()}Enabled", value);
  }

  bool getFilterEnabled(ItemCategory category) {
    return prefs.getBool("${category.toString()}FilterEnabled") ?? true;
  }

  Future<void> setFilterEnabled(ItemCategory category, bool value) async {
    await prefs.setBool("${category.toString()}FilterEnabled", value);
  }

  bool getSearchFilterEnabled(ItemCategory category) {
    return prefs.getBool("${category.toString()}SearchFilterEnabled") ?? true;
  }

  Future<void> setSearchFilterEnabled(ItemCategory category, bool value) async {
    await prefs.setBool("${category.toString()}SearchFilterEnabled", value);
  }
}
