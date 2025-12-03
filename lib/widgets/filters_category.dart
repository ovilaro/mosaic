import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/styles/app_styles.dart';

class FiltersCategory extends StatefulWidget {
  const FiltersCategory({super.key, required this.itemCategory});

  final ItemCategory itemCategory;

  @override
  State<FiltersCategory> createState() => _FiltersCategoryState();
}

class _FiltersCategoryState extends State<FiltersCategory> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: selected ? 1.0 : 0.0,
      clipBehavior: Clip.hardEdge,
      color: selected ? AppStyles.white : AppStyles.darkWhite,
      child: InkWell(
        onTap: () {
          selected = !selected;
          setState(() {});
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
            ],
          ),
        ),
      ),
    );
  }
}
