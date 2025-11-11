import 'package:flutter/material.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class WaterfallItems extends StatelessWidget {
  const WaterfallItems({
    super.key,
    required this.mainAppBarType,
    required this.items,
  });

  final MainAppBarType mainAppBarType;
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(mainAppBarType),
      body: WaterfallFlow.builder(
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
      ),
    );
  }

  AppBar getAppBar(MainAppBarType mainAppBarType) {
    String title;
    AppBar appBar;
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
    appBar = AppBar(
      title: Text(title),
      leading: IconButton(
        onPressed: () {
          debugPrint("sort button pressed!");
        },
        icon: Icon(Icons.sort),
      ),
    );

    return appBar;
  }
}
