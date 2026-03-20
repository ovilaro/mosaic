import 'package:flutter/material.dart';
import 'package:mosaic/models/app_theme_preference.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final mosaicData = context.watch<MosaicData>();
    final selectedTheme = mosaicData.getAppThemePreference();

    return Scaffold(
      appBar: AppBar(title: const Text("Settings")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Theme", style: AppStyles.h2),
            AppStyles.sizedBox10,
            SegmentedButton<AppThemePreference>(
              style: AppStyles.segmentedStyle,
              segments: const [
                ButtonSegment<AppThemePreference>(
                  value: AppThemePreference.white,
                  label: Text("White"),
                  icon: Icon(Icons.light_mode),
                ),
                ButtonSegment<AppThemePreference>(
                  value: AppThemePreference.black,
                  label: Text("Black"),
                  icon: Icon(Icons.dark_mode),
                ),
                ButtonSegment<AppThemePreference>(
                  value: AppThemePreference.device,
                  label: Text("Device"),
                  icon: Icon(Icons.settings_suggest),
                ),
              ],
              selected: {selectedTheme},
              onSelectionChanged: (selection) async {
                if (selection.isEmpty) return;
                await mosaicData.setAppThemePreference(
                  selection.first,
                  WidgetsBinding.instance.platformDispatcher.platformBrightness,
                );
              },
            ),
            AppStyles.sizedBox20,
            Text("Accessibility", style: AppStyles.h2),
            AppStyles.sizedBox10,
            SwitchListTile(
              title: const Text("Show Navigation Labels"),
              value: mosaicData.navBarLabelsEnabled,
              onChanged: (value) async {
                await mosaicData.setNavBarLabelsEnabled(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
