import 'package:flutter/material.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(), // TODO: themedata
      home: MainNavigationBar(),
    );
  }
}
