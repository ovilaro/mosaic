import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:mosaic/screens/search.dart';
import 'package:mosaic/screens/settings.dart';
import 'package:mosaic/screens/waterfall_items.dart';
import 'package:mosaic/styles/app_styles.dart';

enum MainAppBarType { notStarted, inProgress, finished, settings }

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int currentPageIndex = 0;
  late final List<Widget?> _pages;

  @override
  void initState() {
    super.initState();
    _pages = List<Widget?>.filled(MainAppBarType.values.length, null);
    _pages[currentPageIndex] = _buildPage(currentPageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible: currentPageIndex != 3,
        child: FloatingActionButton(
          onPressed: () {
            debugPrint("floating button pressed!");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Search()),
            );
          },
          foregroundColor: AppStyles.darkGrey,
          backgroundColor: AppStyles.darkWhite,
          // shape: ShapeBorde,
          child: const Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
            _pages[index] ??= _buildPage(index);
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Symbols.newsstand),
            label: "Not Started",
          ),
          NavigationDestination(
            icon: Icon(Symbols.table_eye),
            label: "In Progress",
          ),
          NavigationDestination(
            icon: Icon(Symbols.inventory_2),
            label: "Finished",
          ),
          NavigationDestination(
            icon: Icon(Symbols.settings),
            label: "Settings",
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: _pages
            .map((page) => page ?? const SizedBox.shrink())
            .toList(growable: false),
      ),
    );
  }

  Widget _buildPage(int index) {
    final type = MainAppBarType.values[index];
    if (type == MainAppBarType.settings) {
      return const Settings(key: PageStorageKey(MainAppBarType.settings));
    }

    return WaterfallItems(
      key: PageStorageKey(type),
      mainAppBarType: type,
    );
  }
}
