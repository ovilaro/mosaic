import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/styles/app_styles.dart';

class ItemCategoryRibbon extends StatelessWidget {
  const ItemCategoryRibbon({super.key, required this.itemCategory});

  final ItemCategory itemCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppStyles.blue,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
      ),
      child: Icon(Item.getCategoryIcon(itemCategory), color: AppStyles.white),
    );
  }
}
