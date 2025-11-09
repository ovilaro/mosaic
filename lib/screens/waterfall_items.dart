import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class WaterfallItems extends StatelessWidget {
  const WaterfallItems({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    int maxItems = 10;
    for (var i = 0; i < maxItems; i++) {
      int value = Random().nextInt(3);
      switch (value) {
        case 0:
          items.add(
            "https://www.ixpap.com/images/2021/08/RDR2-4K-Wallpaper.jpg",
          );
          break;
        case 1:
          items.add(
            "https://www.gamespot.com/a/uploads/scale_medium/1197/11970954/3144793-rdr2_bannerart02.jpg",
          );
          break;
        case 2:
          items.add(
            "https://www.ixpap.com/images/2021/08/RDR2-Wallpaper-4-768x1316.jpg",
          );
          break;
      }
    }
    return WaterfallFlow.builder(
      itemCount: items.length,
      gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // crossAxisSpacing: 5.0,
        // mainAxisSpacing: 5.0,

        /// follow max child trailing layout offset and layout with full cross axis extend
        /// last child as loadmore item/no more item in [GridView] and [WaterfallFlow]
        /// with full cross axis extend
        //  LastChildLayoutType.fullCrossAxisExtend,

        /// as foot at trailing and layout with full cross axis extend
        /// show no more item at trailing when children are not full of viewport
        /// if children is full of viewport, it's the same as fullCrossAxisExtend
        //  LastChildLayoutType.foot,
        lastChildLayoutTypeBuilder: (index) => index == items.length
            ? LastChildLayoutType.foot
            : LastChildLayoutType.none,
        collectGarbage: (List<int> garbages) {
          ///collectGarbage
          // for (var index in garbages) {
          //   final provider = ExtendedNetworkImageProvider(
          //     _list[index].imageUrl,
          //   );
          //   provider.evict();
          // }
        },
      ),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: AppStyles.veryLightGrey,
          child: Image.network(items[index]),
        );
      },
    );
  }
}
