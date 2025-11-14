import 'package:flutter/material.dart';
import 'package:mosaic/styles/app_styles.dart';

class FiltersCategory extends StatefulWidget {
  const FiltersCategory({super.key, required this.i});

  final int i;

  @override
  State<FiltersCategory> createState() => _FiltersCategoryState();
}

class _FiltersCategoryState extends State<FiltersCategory> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: selected ? AppStyles.veryDarkWhite : AppStyles.white,
      child: InkWell(
        splashColor: AppStyles.veryLightGrey,
        onTap: () {
          debugPrint('Card tapped.');
          selected = !selected;
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("categoria ${widget.i}", style: AppStyles.appBarTitle),
            ],
          ),
        ),
      ),
    );
  }
}
