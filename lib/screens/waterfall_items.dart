import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';
import 'package:mosaic/widgets/waterfall_item.dart';
import 'package:provider/provider.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class WaterfallItems extends StatelessWidget {
  const WaterfallItems({super.key, required this.mainAppBarType});

  final MainAppBarType mainAppBarType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getAppBarTitle(mainAppBarType)),
        leading: IconButton(
          onPressed: () {
            debugPrint("sort button pressed!");
          },
          icon: Icon(Icons.sort),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Filters(context: context);
                },
                isScrollControlled: true,
                useSafeArea: true,
              );
            },
            icon: Icon(Icons.filter_alt),
          ),
        ],
      ),
      body: Consumer<MosaicData>(
        builder: (context, mosaicData, child) {
          ItemStatus status = ItemStatus.values[mainAppBarType.index];
          var items = mosaicData.getItemsWithStatus(status);
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
              return WaterfallItem(item: items[index]);
            },
          );
        },
      ),
    );
  }

  String getAppBarTitle(MainAppBarType mainAppBarType) {
    //TODO: should get strings from another place
    String title;
    switch (mainAppBarType) {
      case MainAppBarType.inProgress:
        title = "In Progress";
        break;
      case MainAppBarType.notStarted:
        title = "Not Started";
        break;
      case MainAppBarType.finished:
        title = "Finished";
        break;
      default:
        title = "";
        break;
    }
    return title;
  }
}
