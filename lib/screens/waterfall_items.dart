import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/waterfall_item.dart';
import 'package:provider/provider.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class WaterfallItems extends StatelessWidget {
  const WaterfallItems({
    super.key,
    required this.mainAppBarType,
    this.scrollController,
  });

  final MainAppBarType mainAppBarType;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return Consumer<MosaicData>(
      builder: (context, mosaicData, child) {
        ItemStatus status = ItemStatus.values[mainAppBarType.index];
        var items = mosaicData.getItemsWithStatus(status);
        return Scaffold(
          appBar: AppBar(
            title: Text(getAppBarTitle(mainAppBarType)),
            leading: IconButton(
              onPressed: () => sortAction(context, mosaicData),
              icon: Item.getOrderIcon(
                mosaicData.getItemOrder(),
                color: AppStyles.darkGrey,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Filters(
                        context: context,
                        filterRange: FilterRange.list,
                      );
                    },
                    isScrollControlled: true,
                    useSafeArea: true,
                  );
                },
                icon: Icon(
                  Icons.filter_alt,
                  color: mosaicData.isAnyFilterEnabled(FilterRange.list)
                      ? AppStyles.blue
                      : AppStyles.darkGrey,
                ),
              ),
            ],
          ),
          body: WaterfallFlow.builder(
            controller: scrollController,
            itemCount: items.length,
            gridDelegate: SliverWaterfallFlowDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width > 600
                  ? 250
                  : 300,
              // gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
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
          ),
        );
      },
    );
  }

  String getAppBarTitle(MainAppBarType mainAppBarType) {
    String title;
    switch (mainAppBarType) {
      case MainAppBarType.notStarted:
        title = "Not Started";
        break;
      case MainAppBarType.inProgress:
        title = "In Progress";
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

  Future<void> sortAction(BuildContext context, MosaicData mosaicData) async {
    ItemOrder order = mosaicData.getItemOrder();
    ItemOrder newOrder = ItemOrder.addedAsc;
    switch (order) {
      case ItemOrder.addedAsc:
        newOrder = ItemOrder.addedDesc;
        break;
      case ItemOrder.addedDesc:
        newOrder = ItemOrder.modifiedAsc;
        break;
      case ItemOrder.modifiedAsc:
        newOrder = ItemOrder.modifiedDesc;
        break;
      case ItemOrder.modifiedDesc:
        newOrder = ItemOrder.addedAsc;
        break;
    }
    var result = await mosaicData.setItemOrder(newOrder);
    if (result) {
      var snackBar = SnackBar(
        backgroundColor: AppStyles.blue,
        content: Center(
          child: Text(
            Item.getOrderString(newOrder),
            style: AppStyles.buttonsActions.copyWith(color: AppStyles.white),
          ),
        ),
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}
