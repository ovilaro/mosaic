import 'package:flutter/material.dart';
import 'package:mosaic/screens/item_detail.dart';
import 'package:mosaic/styles/app_styles.dart';

class WaterfallItem extends StatelessWidget {
  const WaterfallItem({super.key, required this.item});

  final String item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(color: AppStyles.veryLightGrey, child: Image.network(item)),
      onTap: () {
        debugPrint("floating button pressed!");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ItemDetail()),
        );
      },
    );
  }
}
