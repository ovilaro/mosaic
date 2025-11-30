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
          alignment: AlignmentGeometry.topRight,
          children: [
            Stack(
              children: [
                Hero(
                  tag: item.id,
                  child: Image.network(
                    item.ignoreImages
                        ? AppStyles.noCoverImgUrl
                        : item.coverBig ?? AppStyles.noCoverImgUrl,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.network(AppStyles.noCoverImgUrl);
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    color: AppStyles.veryDarkGreyAlpha,
                    // decoration: BoxDecoration(
                    //   color: AppStyles.veryDarkGreyAlpha,
                    //   borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(12),
                    //     topRight: Radius.circular(12),
                    //   ),
                    // ),
                    child: Text(
                      item.name,
                      style: AppStyles.normalTertiary,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppStyles.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                ),
              ),
              child: Icon(item.typeIcon, color: AppStyles.white),
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
