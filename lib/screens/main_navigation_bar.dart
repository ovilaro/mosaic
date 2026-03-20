import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/search.dart';
import 'package:mosaic/screens/settings.dart';
import 'package:mosaic/screens/waterfall_items.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/lazy_indexed_stack.dart';
import 'package:provider/provider.dart';

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
    final mosaicData = context.watch<MosaicData>();
    final showLabels = mosaicData.navBarLabelsEnabled;

    return Scaffold(
      body: LazyIndexedStack(
        index: currentPageIndex,
        children: const [
          WaterfallItems(mainAppBarType: MainAppBarType.notStarted),
          WaterfallItems(mainAppBarType: MainAppBarType.inProgress),
          WaterfallItems(mainAppBarType: MainAppBarType.finished),
          Settings(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        height: showLabels ? null : AppStyles.navBarCompactHeight,
        selectedIndex: currentPageIndex,
        labelBehavior: showLabels
            ? NavigationDestinationLabelBehavior.alwaysShow
            : NavigationDestinationLabelBehavior.alwaysHide,
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Symbols.newsstand),
            selectedIcon: const Icon(Symbols.newsstand, weight: 700),
            label: 'Not Started',
            tooltip: 'Not Started',
          ),
          NavigationDestination(
            icon: const Icon(Symbols.table_eye),
            selectedIcon: const Icon(Symbols.table_eye, weight: 700),
            label: 'In Progress',
            tooltip: 'In Progress',
          ),
          NavigationDestination(
            icon: const Icon(Symbols.inventory_2),
            selectedIcon: const Icon(Symbols.inventory_2, weight: 700),
            label: 'Finished',
            tooltip: 'Finished',
          ),
          NavigationDestination(
            icon: const Icon(Symbols.settings),
            selectedIcon: const Icon(Symbols.settings, weight: 700),
            label: 'Settings',
            tooltip: 'Settings',
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
