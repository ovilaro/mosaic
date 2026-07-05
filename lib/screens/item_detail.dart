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
  const ItemDetail({super.key, required this.itemId, this.embedded = false});

  final int itemId;
  final bool embedded;

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
          body: LayoutBuilder(
            builder: (context, constraints) {
              final split = widget.embedded && constraints.maxWidth >= 700;

              final coverCard = Center(
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: _coverStack(item),
                ),
              );
              final nameText = Text(
                item.name,
                style: AppStyles.h1,
                textAlign: TextAlign.center,
              );
              final shortDescText = Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  item.shortDesc,
                  style: AppStyles.h3,
                  textAlign: TextAlign.center,
                ),
              );
              final segButton = SegmentedButton<ItemStatus>(
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
              );
              final onlyUpdateRow = Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: AppStyles.buttonStyle,
                    onPressed: () async {
                      await context
                          .read<MosaicData>()
                          .updateItemModifiedDate(item);
                    },
                    child: Text("Only update"),
                  ),
                  IconButton(
                    icon: Icon(Icons.info_outline),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Text(
                            "This will update the modification date to now, so the order by modification date will change.",
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK"),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              );
              final summaryBlock = Visibility(
                visible: item.summary != null,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text(
                    item.summary ?? "",
                    style: AppStyles.normalPrimary,
                  ),
                ),
              );
              final storyInfoBlock = Visibility(
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
              );
              final itemInfoBlock = Visibility(
                visible: item.itemInfo.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ItemInfoTable(item: item),
                ),
              );
              final deleteButton = Column(
                children: [
                  AppStyles.sizedBox40,
                  TextButton(
                    style: AppStyles.buttonStyleWarning,
                    onPressed: () => showDeletePopUp(item),
                    child: Text("Delete item"),
                  ),
                  AppStyles.sizedBox20,
                ],
              );

              if (!split) {
                return SingleChildScrollView(
                  child: SafeArea(
                    child: Column(
                      children: [
                        coverCard,
                        nameText,
                        shortDescText,
                        AppStyles.sizedBox10,
                        segButton,
                        AppStyles.sizedBox10,
                        onlyUpdateRow,
                        summaryBlock,
                        storyInfoBlock,
                        itemInfoBlock,
                        deleteButton,
                      ],
                    ),
                  ),
                );
              }

              return SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [summaryBlock, shortDescText],
                            ),
                          ),
                          Expanded(flex: 4, child: coverCard),
                        ],
                      ),
                      AppStyles.sizedBox10,
                      Center(
                        child: Column(
                          children: [
                            segButton,
                            AppStyles.sizedBox10,
                            onlyUpdateRow,
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: storyInfoBlock),
                          Expanded(child: itemInfoBlock),
                        ],
                      ),
                      deleteButton,
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  Widget _coverStack(Item item) {
    final stack = Stack(
      alignment: AlignmentGeometry.topRight,
      children: [
        item.coverBig == null
            ? AppStyles.coverPlaceholderImage
            : CachedNetworkImage(
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
    return widget.embedded ? stack : Hero(tag: item.id, child: stack);
  }

  void showDeletePopUp(Item item) {
    showDialog<String>(
      context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: Text(
          'Warning',
          style: AppStyles.h2,
          textAlign: TextAlign.center,
        ),
        content: Text('Are you sure to delete the item?', style: AppStyles.h3),
        actions: <Widget>[
          TextButton(
            style: AppStyles.buttonStyle,
            onPressed: () => Navigator.pop(dialogContext, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            style: AppStyles.buttonStyleWarning,
            onPressed: () async {
              await dialogContext.read<MosaicData>().deleteItemApiId(item);
              if (!dialogContext.mounted) return;
              Navigator.pop(dialogContext);
              if (!widget.embedded && mounted) {
                Navigator.pop(context);
              }
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
