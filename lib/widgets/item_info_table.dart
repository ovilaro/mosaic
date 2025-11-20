import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/styles/app_styles.dart';

class ItemInfoTable extends StatelessWidget {
  const ItemInfoTable({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: AppStyles.veryLightGrey),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        for (var i = 0; i < item.itemInfo.length; i++)
          TableRow(
            children: <Widget>[
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.itemInfo.keys.elementAt(i),
                    style: AppStyles.normalPrimary,
                  ),
                ),
              ),
              TableCell(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    item.itemInfo[item.itemInfo.keys.elementAt(i)]!,
                    style: AppStyles.normalSecundary,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
