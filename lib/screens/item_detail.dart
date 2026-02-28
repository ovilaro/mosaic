import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/item_category_ribbon.dart';
import 'package:mosaic/widgets/item_info_table.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key, required this.itemId});

  final int itemId;

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MosaicData>(
      builder: (context, mosaicData, child) {
        Item? item = mosaicData.getItem(widget.itemId);
        if (item == null) {
          return Center(child: Text("Error on reading item"));
        }
        if (item.needsDetailRequest) {
          mosaicData.updateDetailInfoIfNeeded(item);
          return Scaffold(
            appBar: AppBar(title: Text(item.name)),
            body: Center(child: RefreshProgressIndicator()),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: Text(item.name),
            actions: [
              IconButton(
                onPressed: () async {
                  final url = Uri.parse(item.coverBig!);
                  final response = await http.get(url);
                  final contentType = response.headers['content-type'];
                  final image = XFile.fromData(
                    response.bodyBytes,
                    mimeType: contentType,
                  );
                  SharePlus.instance.share(
                    ShareParams(
                      title: "I am enjoying ${item.name}!",
                      subject: "I am enjoying ${item.name}!",
                      files: [image],
                      text:
                          "${item.name}\n${item.shortDesc}\n\n${item.summary}",
                      // previewThumbnail:
                    ),
                  );
                },
                icon: Icon(Icons.share),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Center(
                    child: Card(
                      clipBehavior: Clip.hardEdge,
                      child: Hero(
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
                    ),
                  ),
                  Text(
                    item.name,
                    style: AppStyles.h1,
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      item.shortDesc,
                      style: AppStyles.h3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  AppStyles.sizedBox10,
                  SegmentedButton<ItemStatus>(
                    showSelectedIcon: false,
                    style: AppStyles.segmentedStyle,
                    segments: <ButtonSegment<ItemStatus>>[
                      ButtonSegment<ItemStatus>(
                        value: ItemStatus.notStarted,
                        label: Text('Not Started'),
                      ),
                      ButtonSegment<ItemStatus>(
                        value: ItemStatus.inProgress,
                        label: Text('In Progress'),
                      ),
                      ButtonSegment<ItemStatus>(
                        value: ItemStatus.finished,
                        label: Text('Finished'),
                      ),
                    ],
                    selected: <ItemStatus>{item.itemStatus},
                    onSelectionChanged: (Set<ItemStatus> newSelection) async {
                      await context.read<MosaicData>().updateItemStatus(
                        item,
                        newSelection.first,
                      );
                      setState(() {});
                    },
                  ),
                  Visibility(
                    visible: item.summary != null,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text(
                        item.summary ?? "",
                        style: AppStyles.normalPrimary,
                      ),
                    ),
                  ),
                  Visibility(
                    visible: item.storyInfo.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          decoration: BoxDecoration(color: AppStyles.darkWhite),
                          padding: EdgeInsets.all(16),
                          child: Column(
                            children: [
                              for (
                                int i = 0;
                                i < item.storyInfo.keys.length;
                                i++
                              )
                                Column(
                                  children: [
                                    Text(
                                      item.storyInfo.keys.elementAt(i),
                                      style: AppStyles.h3,
                                    ),
                                    AppStyles.sizedBox10,
                                    Text(
                                      item.storyInfo[item.storyInfo.keys
                                          .elementAt(i)]!,
                                      style: AppStyles.normalSecundary.copyWith(
                                        color: AppStyles.darkGrey,
                                      ),
                                    ),
                                    AppStyles.sizedBox20,
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: item.itemInfo.isNotEmpty,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ItemInfoTable(item: item),
                    ),
                  ),
                  AppStyles.sizedBox40,
                  TextButton(
                    style: AppStyles.buttonStyleWarning,
                    onPressed: () => showDeletePopUp(item),
                    child: Text("Delete item"),
                  ),
                  AppStyles.sizedBox20,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void showDeletePopUp(Item item) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          'Warning',
          style: AppStyles.h2,
          textAlign: TextAlign.center,
        ),
        content: Text('Are you sure to delete the item?', style: AppStyles.h3),
        actions: <Widget>[
          TextButton(
            style: AppStyles.buttonStyle,
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            style: AppStyles.buttonStyleWarning,
            onPressed: () async {
              await context.read<MosaicData>().deleteItemApiId(item);
              if (!context.mounted) return;
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
