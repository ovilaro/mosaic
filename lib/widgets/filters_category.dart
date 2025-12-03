import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:provider/provider.dart';

class FiltersCategory extends StatefulWidget {
  const FiltersCategory({
    super.key,
    required this.itemCategory,
    required this.filterRange,
  });

  final ItemCategory itemCategory;
  final FilterRange filterRange;

  @override
  State<FiltersCategory> createState() => _FiltersCategoryState();
}

class _FiltersCategoryState extends State<FiltersCategory> {
  @override
  Widget build(BuildContext context) {
    bool selected = context.read<MosaicData>().getFilterEnabled(
      widget.itemCategory,
      widget.filterRange,
    );
    return Card(
      elevation: selected ? 1.0 : 0.0,
      clipBehavior: Clip.hardEdge,
      color: selected ? AppStyles.white : AppStyles.darkWhite,
      child: InkWell(
        onTap: () async {
          context.read<MosaicData>().setFilterEnabled(
            widget.itemCategory,
            widget.filterRange,
            !selected,
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Item.getCategoryIcon(widget.itemCategory),
                color: selected ? AppStyles.darkGrey : AppStyles.veryDarkWhite,
              ),
              AppStyles.sizedBox10,
              Text(
                Item.getCategoryString(widget.itemCategory),
                style: AppStyles.h2.copyWith(
                  color: selected
                      ? AppStyles.darkGrey
                      : AppStyles.veryDarkWhite,
                  fontSize: 22,
                ),
              ),
              AppStyles.sizedBox10,
              Icon(
                selected ? Icons.check : null,
                color: selected ? AppStyles.darkGrey : AppStyles.veryDarkWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
