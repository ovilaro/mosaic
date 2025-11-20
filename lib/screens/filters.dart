import 'package:flutter/material.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/filters_category.dart';

class Filters extends StatelessWidget {
  const Filters({super.key, required this.context});

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppStyles.sizedBox40,
                Text("Filters", style: AppStyles.h1),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            AppStyles.sizedBox10,
            for (var i = 0; i < 5; i++) FiltersCategory(i: i),
          ],
        ),
      ),
    );
  }
}
