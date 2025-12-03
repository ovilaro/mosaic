import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/styles/app_styles.dart';

class ItemTypeIcon extends StatelessWidget {
  const ItemTypeIcon({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppStyles.blue,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
      ),
      child: Icon(item.typeIcon, color: AppStyles.white),
    );
  }
}
