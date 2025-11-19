import 'package:flutter/material.dart';
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
  bool working = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<MosaicData>(
      builder: (context, mosaicData, child) {
        working = false;
        var item = mosaicData.searchResults[widget.index];
        return ListTile(
          leading: Image.network(item.thumb ?? AppStyles.noThumbImgUrl),
          title: Text(item.name),
          subtitle: Text(item.shortDesc),
          trailing: IconButton(
            onPressed: () async {
              if (working) return;
              working = true;
              if (item.isAdded) {
                await context.read<MosaicData>().deleteItemApiId(item);
              } else {
                await context.read<MosaicData>().addItem(item);
              }
            },
            icon: Icon(item.isAdded ? Icons.delete : Icons.add),
          ),
        );
      },
    );
  }
}
