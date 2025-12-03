import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:provider/provider.dart';

class SearchTile extends StatefulWidget {
  const SearchTile({super.key, required this.index});

  final int index;

  @override
  State<SearchTile> createState() => _SearchTileState();
}

class _SearchTileState extends State<SearchTile> {
  late Item item;

  @override
  Widget build(BuildContext context) {
    return Consumer<MosaicData>(
      builder: (context, mosaicData, child) {
        item = mosaicData.searchResults[widget.index];
        return ListTile(
          minTileHeight: AppStyles.thumbSizeHeight,
          leading: item.thumb == null
              ? AppStyles.thumbPlaceholderImage
              : FadeInImage.assetNetwork(
                  width: AppStyles.thumbSizeWidth,
                  height: AppStyles.thumbSizeHeight,
                  placeholder: AppStyles.thumbPlaceholderPath,
                  image: item.thumb!,
                  imageErrorBuilder: (context, error, stackTrace) =>
                      AppStyles.thumbPlaceholderImage,
                ),
          title: Text(item.name, style: AppStyles.normalPrimary),
          subtitle: Row(
            children: [
              // ItemTypeIcon(item: item),
              Icon(item.typeIcon, color: AppStyles.veryLightGrey),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(item.shortDesc, style: AppStyles.normalSecundary),
                ),
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () async {
              if (item.isAdded) {
                showDeletePopUp();
              } else {
                await context.read<MosaicData>().addOrUpdateItem(item);
              }
            },
            icon: Icon(
              color: item.isAdded ? Colors.red : AppStyles.blue,
              item.isAdded ? Icons.delete : Icons.add,
            ),
          ),
        );
      },
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
              await context.read<MosaicData>().deleteItemApiId(item);
              if (!context.mounted) return;
              Navigator.pop(context, "Yes");
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
