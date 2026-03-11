import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/filters_category.dart';
import 'package:provider/provider.dart';

enum FilterRange { list, search }

class Filters extends StatelessWidget {
  const Filters({super.key, required this.filterRange});

  final FilterRange filterRange;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(12),
        child: Consumer<MosaicData>(
          builder: (context, mosaicData, child) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppStyles.sizedBox40,
                    switch (filterRange) {
                      FilterRange.list => Text(
                        "Categories to show",
                        style: AppStyles.h2,
                      ),
                      FilterRange.search => Text(
                        "Categories to search",
                        style: AppStyles.h2,
                      ),
                    },
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
                AppStyles.sizedBox10,
                for (int i = 0; i < ItemCategory.values.length; i++)
                  FiltersCategory(
                    itemCategory: ItemCategory.values[i],
                    filterRange: filterRange,
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
