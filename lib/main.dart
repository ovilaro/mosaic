import 'package:flutter/material.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/splash.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MosaicData(),
      child: MaterialApp(theme: AppStyles.themeData, home: const Splash()),
    );
  }
}
