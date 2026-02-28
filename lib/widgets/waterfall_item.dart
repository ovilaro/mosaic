import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/screens/item_detail.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/item_category_ribbon.dart';

class WaterfallItem extends StatelessWidget {
  const WaterfallItem({super.key, required this.item});

  final Item item;
  static const Color _nameOverlayColor = Color(0x99212529);
  static const TextStyle _nameOverlayTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFFDDDDDD),
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: AppStyles.veryLightGrey,
        child: SizedBox(
          width: 300,
          child: Stack(
            children: [
              Hero(
                tag: item.id,
                child: Stack(
                  alignment: AlignmentGeometry.topRight,
                  children: [
                    item.coverBig == null
                        ? AppStyles.coverPlaceholderImage
                        : CachedNetworkImage(
                            imageUrl: item.coverBig!,
                            placeholder: (context, url) =>
                                AppStyles.coverPlaceholderImage,
                            errorWidget: (context, url, error) =>
                                AppStyles.coverPlaceholderImage,
                          ),
                    ItemCategoryRibbon(itemCategory: item.itemCategory),
                  ],
                ),
              ),

              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  color: _nameOverlayColor,
                  child: Text(
                    item.name,
                    style: _nameOverlayTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
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
