import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
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
  static const _tabs = <MainAppBarType>[
    MainAppBarType.notStarted,
    MainAppBarType.inProgress,
    MainAppBarType.finished,
    MainAppBarType.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomBar(
        clip: Clip.none,
        fit: StackFit.expand,
        hideOnScroll: true,
        borderRadius: BorderRadius.circular(16),
        duration: const Duration(milliseconds: 450),
        curve: Curves.easeOutQuint,
        width: MediaQuery.of(context).size.width * 0.9,
        barColor: AppStyles.darkWhite,
        offset: 16,
        barAlignment: Alignment.bottomCenter,
        iconHeight: 26,
        iconWidth: 26,
        body: (context, controller) {
          return _buildPage(currentPageIndex, controller);
        },
        child: SizedBox(
          height: 58,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    const indicatorWidth = 22.0;
                    const indicatorHeight = 5.0;
                    final slotWidth = constraints.maxWidth / 5;
                    final left =
                        (slotWidth * _slotForTab(currentPageIndex)) +
                        ((slotWidth - indicatorWidth) / 2);

                    return Stack(
                      children: [
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                Expanded(child: _buildNavButton(0)),
                                Expanded(child: _buildNavButton(1)),
                                const Expanded(child: SizedBox.shrink()),
                                Expanded(child: _buildNavButton(2)),
                                Expanded(child: _buildNavButton(3)),
                              ],
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: const Duration(milliseconds: 260),
                          curve: Curves.easeOutCubic,
                          left: left,
                          bottom: 1,
                          child: Container(
                            width: indicatorWidth,
                            height: indicatorHeight,
                            decoration: BoxDecoration(
                              color: AppStyles.blue,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Positioned(
                top: -18,
                child: GestureDetector(
                  onTap: _openSearch,
                  child: Container(
                    width: 56,
                    height: 56,
                    decoration: BoxDecoration(
                      color: AppStyles.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppStyles.blue.withValues(alpha: 0.35),
                          blurRadius: 14,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.add,
                      color: AppStyles.white,
                      size: 30,
                      weight: 700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPage(int index, ScrollController controller) {
    final type = MainAppBarType.values[index];
    if (type == MainAppBarType.settings) {
      return const Settings(key: PageStorageKey(MainAppBarType.settings));
    }

    return WaterfallItems(
      key: PageStorageKey(type),
      mainAppBarType: type,
      scrollController: controller,
    );
  }

  IconData _iconForTab(int index) {
    switch (_tabs[index]) {
      case MainAppBarType.notStarted:
        return Symbols.newsstand;
      case MainAppBarType.inProgress:
        return Symbols.table_eye;
      case MainAppBarType.finished:
        return Symbols.inventory_2;
      case MainAppBarType.settings:
        return Symbols.settings;
    }
  }

  Widget _buildNavButton(int index) {
    final isSelected = index == currentPageIndex;
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        focusColor: Colors.transparent,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        onTap: () {
          setState(() {
            currentPageIndex = index;
          });
        },
        child: SizedBox.expand(
          child: Center(
            child: AnimatedScale(
              scale: isSelected ? 1.06 : 1,
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOut,
              child: Icon(
                _iconForTab(index),
                color: isSelected ? AppStyles.blue : AppStyles.veryDarkGrey,
                size: 25,
                weight: 700,
              ),
            ),
          ),
        ),
      ),
    );
  }

  int _slotForTab(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return 0;
      case 1:
        return 1;
      case 2:
        return 3;
      case 3:
        return 4;
      default:
        return 0;
    }
  }

  void _openSearch() {
    debugPrint("floating button pressed!");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Search()),
    );
  }
}
