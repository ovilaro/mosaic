import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/screens/item_detail.dart';
import 'package:mosaic/styles/app_styles.dart';

class WaterfallItem extends StatelessWidget {
  const WaterfallItem({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: AppStyles.veryLightGrey,
        child: Stack(
          alignment: AlignmentGeometry.bottomCenter,
          children: [
            Hero(
              tag: item.id,
              child: Image.network(item.coverBig ?? AppStyles.noCoverImgUrl),
            ),
            Visibility(
              visible: item.coverBig == null,
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.all(4),
                child: Text(item.name, style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemDetail(itemId: item.id)),
        );
      },
    );
  }
}
