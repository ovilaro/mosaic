import 'package:flutter/material.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';
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
            Text(status),
          ],
        ),
      ),
    );
  }

  Future<void> init() async {
    status = "Starting app";
    setState(() {});

    status = "Opening database";
    setState(() {});
    if (!mounted) return;
    await context.read<MosaicData>().init();

    status = "Reading database";
    setState(() {});
    if (!mounted) return;
    await context.read<MosaicData>().readItems();

    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainNavigationBar()),
    );
  }
}
