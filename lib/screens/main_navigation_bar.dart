import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:mosaic/models/item.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: const [
          WaterfallItems(mainAppBarType: MainAppBarType.notStarted),
          WaterfallItems(mainAppBarType: MainAppBarType.inProgress),
          WaterfallItems(mainAppBarType: MainAppBarType.finished),
          Settings(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Symbols.newsstand),
            selectedIcon: Icon(Symbols.newsstand, weight: 700),
            label: 'Not Started',
          ),
          NavigationDestination(
            icon: Icon(Symbols.table_eye),
            selectedIcon: Icon(Symbols.table_eye, weight: 700),
            label: 'In Progress',
          ),
          NavigationDestination(
            icon: Icon(Symbols.inventory_2),
            selectedIcon: Icon(Symbols.inventory_2, weight: 700),
            label: 'Finished',
          ),
          NavigationDestination(
            icon: Icon(Symbols.settings),
            selectedIcon: Icon(Symbols.settings, weight: 700),
            label: 'Settings',
          ),
        ],
      ),
      floatingActionButton: currentPageIndex != 3
          ? FloatingActionButton(
              onPressed: _openSearch,
              backgroundColor: AppStyles.blue,
              child: const Icon(Icons.add, color: AppStyles.white, size: 30),
            )
          : null,
    );
  }

  void _openSearch() {
    ItemStatus status = switch (currentPageIndex) {
      0 => ItemStatus.notStarted,
      1 => ItemStatus.inProgress,
      2 => ItemStatus.finished,
      _ => ItemStatus.notStarted,
    };

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Search(targetStatus: status)),
    );
  }
}
