import 'package:flutter/material.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';
import 'package:mosaic/styles/app_styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppStyles.themeData, home: MainNavigationBar());
  }
}
