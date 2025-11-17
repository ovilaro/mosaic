import 'package:flutter/material.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:mosaic/widgets/search_tile.dart';
import 'package:provider/provider.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController controller = TextEditingController();
  String lastTextSearched = "";

  @override
  void initState() {
    super.initState();
    controller.addListener(textChanged);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Filters(context: context);
                },
                isScrollControlled: true,
                useSafeArea: true,
              );
            },
            icon: Icon(Icons.filter_alt),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Consumer<MosaicData>(
              builder: (context, mosaicData, child) {
                return ListView(
                  children: [
                    for (int i = 0; i < mosaicData.searchResults.length; i++)
                      SearchTile(item: mosaicData.searchResults[i]),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hint: Text("write something to search for"),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              // onChanged: textChanged,
            ),
          ),
        ],
      ),
    );
  }

  void textChanged() {
    debugPrint("search term: ${controller.text}");

    if (controller.text == lastTextSearched) {
      return;
    }

    context.read<MosaicData>().search(controller.text);

    if (controller.text.isEmpty) {
      setState(() {});
      return;
    }

    lastTextSearched = controller.text;
    setState(() {});
  }
}
