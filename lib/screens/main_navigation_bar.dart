import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:mosaic/screens/grid_items.dart';
import 'package:mosaic/screens/settings.dart';
import 'package:mosaic/screens/waterfall_items.dart';
import 'package:mosaic/styles/app_styles.dart';

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
      floatingActionButton: Visibility(
        visible: currentPageIndex != 3,
        child: FloatingActionButton(
          onPressed: () {
            debugPrint("floating button pressed!");
          },
          foregroundColor: AppStyles.lightGrey,
          backgroundColor: AppStyles.veryDarkWhite,
          // shape: ShapeBorde,
          child: const Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Symbols.table_eye),
            label: "In Progress",
          ),
          NavigationDestination(
            icon: Icon(Symbols.newsstand),
            label: "Not Started",
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
      appBar: <AppBar>[
        AppBar(title: Text("In Progress")),
        AppBar(title: Text("Not Started")),
        AppBar(title: Text("Finished")),
        AppBar(title: Text("Settings")),
      ][currentPageIndex],
      body: <Widget>[
        WaterfallItems(),
        GridItems(),
        GridItems(),
        Settings(),
      ][currentPageIndex],
    );
  }
}
