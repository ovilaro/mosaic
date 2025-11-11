import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:mosaic/screens/add_item.dart';
import 'package:mosaic/screens/settings.dart';
import 'package:mosaic/screens/waterfall_items.dart';
import 'package:mosaic/styles/app_styles.dart';

enum MainAppBarType { inProgress, notStarted, finished, settings }

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int currentPageIndex = 0;
  final Map<MainAppBarType, Widget> _bodiesMap = {};

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
              MaterialPageRoute(builder: (context) => const AddItem()),
            );
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
      body: getBody(MainAppBarType.values[currentPageIndex]),
    );
  }

  Widget getBody(MainAppBarType mainAppBarType) {
    Widget? body = _bodiesMap[mainAppBarType];
    if (body == null) {
      if (mainAppBarType == MainAppBarType.settings) {
        body = Settings();
      } else {
        List<String> items = [];
        int maxItems = 10;
        for (var i = 0; i < maxItems; i++) {
          int value = Random().nextInt(3);
          switch (value) {
            case 0:
              items.add(
                "https://www.ixpap.com/images/2021/08/RDR2-4K-Wallpaper.jpg",
              );
              break;
            case 1:
              items.add(
                "https://www.gamespot.com/a/uploads/scale_medium/1197/11970954/3144793-rdr2_bannerart02.jpg",
              );
              break;
            case 2:
              items.add(
                "https://www.ixpap.com/images/2021/08/RDR2-Wallpaper-4-768x1316.jpg",
              );
              break;
          }
        }
        body = WaterfallItems(mainAppBarType: mainAppBarType, items: items);
        _bodiesMap[mainAppBarType] = body;
      }
    }
    return body;
  }
}
