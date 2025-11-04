import 'package:flutter/material.dart';

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
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {},
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[],
      ),
      appBar: <AppBar>[][currentPageIndex],
      body: <Widget>[][currentPageIndex],
    );
  }
}
