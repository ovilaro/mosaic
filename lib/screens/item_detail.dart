import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/item_info_table.dart';
import 'package:provider/provider.dart';

class ItemDetail extends StatefulWidget {
  const ItemDetail({super.key, required this.item});

  final Item item;

  @override
  State<ItemDetail> createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.item.name)),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  child: Hero(
                    tag: widget.item.id,
                    child: Image.network(
                      widget.item.coverBig ?? AppStyles.noCoverImgUrl,
                    ),
                  ),
                ),
              ),
              Text(
                widget.item.name,
                style: AppStyles.h1,
                textAlign: TextAlign.center,
              ),
              AppStyles.sizedBox10,
              Text(widget.item.shortDesc, style: AppStyles.h3),
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
                selected: <ItemStatus>{widget.item.itemStatus},
                onSelectionChanged: (Set<ItemStatus> newSelection) async {
                  widget.item.itemStatus = newSelection.first;
                  await context.read<MosaicData>().addOrUpdateItem(widget.item);
                  setState(() {});
                },
              ),
              Visibility(
                visible: widget.item.summary != null,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    widget.item.summary ?? "",
                    style: AppStyles.normalPrimary,
                  ),
                ),
              ),
              Visibility(
                visible: widget.item.story != null,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    clipBehavior: Clip.hardEdge,
                    child: Container(
                      decoration: BoxDecoration(color: AppStyles.darkWhite),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text("Storyline", style: AppStyles.h3),
                          AppStyles.sizedBox10,
                          Text(
                            widget.item.story ?? "",
                            style: AppStyles.normalSecundary.copyWith(
                              color: AppStyles.darkGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // AppStyles.sizedBox10,
              Visibility(
                visible: widget.item.itemInfo.isNotEmpty,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ItemInfoTable(item: widget.item),
                ),
              ),
              AppStyles.sizedBox40,
              TextButton(
                style: AppStyles.buttonStyleWarning,
                onPressed: showDeletePopUp,
                child: Text("Delete item"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDeletePopUp() {
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
              await context.read<MosaicData>().deleteItemApiId(widget.item);
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
