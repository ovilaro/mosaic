import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mosaic/api_keys.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/splash.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await dotenv.load(fileName: '.env');
  _validateApiKeys();
  runApp(
    ChangeNotifierProvider(create: (context) => MosaicData(), child: MainApp()),
  );
}

void _validateApiKeys() {
  try {
    ApiKeys.igdmClientId;
    ApiKeys.igdmClientSecret;
    ApiKeys.openLibraryUserAgent;
  } catch (e) {
    debugPrint('❌ FATAL: ${e.toString()}');
    debugPrint('Create .env file with required API keys.');
    debugPrint('See .env.example for template.');
    rethrow;
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
      context.read<MosaicData>().syncDeviceBrightness(brightness);
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    context.read<MosaicData>().syncDeviceBrightness(brightness);
  }

  @override
  Widget build(BuildContext context) {
    final mosaicData = context.watch<MosaicData>();

    return MaterialApp(
      theme: AppStyles.themeData,
      darkTheme: AppStyles.darkThemeData,
      themeMode: mosaicData.getThemeMode(),
      home: const Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
