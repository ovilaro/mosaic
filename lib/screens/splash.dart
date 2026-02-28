import 'package:flutter/material.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';
import 'package:mosaic/services/preferences.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:provider/provider.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String status = "";

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, init);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 20, height: 20),
            Text(status, style: AppStyles.h3),
          ],
        ),
      ),
    );
  }

  Future<void> init() async {
    status = "Starting app";
    setState(() {});
    // await Future.delayed(Duration(milliseconds: 500));

    status = "Reading preferences";
    setState(() {});
    await Preferences.instance.init();
    if (!mounted) return;
    context.read<MosaicData>().initAppThemePreference(
      WidgetsBinding.instance.platformDispatcher.platformBrightness,
    );
    // await Future.delayed(Duration(milliseconds: 500));

    status = "Opening database";
    setState(() {});
    if (!mounted) return;
    await context.read<MosaicData>().init();
    // await Future.delayed(Duration(milliseconds: 500));

    status = "Reading database";
    setState(() {});
    if (!mounted) return;
    await context.read<MosaicData>().readItems();
    // await Future.delayed(Duration(milliseconds: 500));

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainNavigationBar()),
    );
  }
}
