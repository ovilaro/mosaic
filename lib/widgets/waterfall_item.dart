import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/item_category_ribbon.dart';

class WaterfallItem extends StatelessWidget {
  const WaterfallItem({
    super.key,
    required this.item,
    required this.onTap,
    this.useHero = true,
    this.isSelected = false,
  });
  static const witdh = 300.0;

  final Item item;
  final VoidCallback onTap;
  final bool useHero;
  final bool isSelected;
  static const Color _nameOverlayColor = Color(0x99212529);
  static const TextStyle _nameOverlayTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFFDDDDDD),
  );

  @override
  Widget build(BuildContext context) {
    final imageStack = Stack(
      alignment: AlignmentGeometry.topRight,
      children: [
        item.coverBig == null
            ? AppStyles.coverPlaceholderImage
            : CachedNetworkImage(
                memCacheWidth: witdh.toInt(),
                imageUrl: item.coverBig!,
                fadeInDuration: const Duration(milliseconds: 120),
                fadeOutDuration: const Duration(milliseconds: 120),
                placeholder: (context, url) => AppStyles.coverPlaceholderImage,
                errorWidget: (context, url, error) =>
                    AppStyles.coverPlaceholderImage,
              ),
        ItemCategoryRibbon(itemCategory: item.itemCategory),
      ],
    );

    return InkWell(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: AppStyles.veryLightGrey,
        shape: isSelected
            ? RoundedRectangleBorder(
                side: BorderSide(color: AppStyles.blue, width: 3),
                borderRadius: BorderRadius.circular(12),
              )
            : null,
        child: SizedBox(
          width: witdh,
          child: Stack(
            children: [
              useHero
                  ? Hero(
                      tag: item.id,
                      child: ClipRRect(
                        borderRadius: AppStyles.coverBorderRadius,
                        child: imageStack,
                      ),
                    )
                  : imageStack,
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
    );
  }
}
