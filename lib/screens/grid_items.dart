import 'package:flutter/material.dart';
import 'package:mosaic/styles/app_styles.dart';

class GridItems extends StatelessWidget {
  const GridItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: AppStyles.veryLightGrey,
          child: Center(child: Text("Item $index")),
        );
      },
    );
  }
}
