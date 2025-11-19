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
  String _lastTextSearched = "";
  DateTime _lastDateTimeType = DateTime.timestamp();
  static const Duration _intervalToWaitAfterType = Duration(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    context.read<MosaicData>().clearSearchResults();
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Consumer<MosaicData>(
                builder: (context, mosaicData, child) {
                  return ListView(
                    children: [
                      for (int i = 0; i < mosaicData.searchResults.length; i++)
                        SearchTile(index: i),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                autofocus: true,
                controller: controller,
                decoration: InputDecoration(
                  hint: Text("write something to search for"),
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void textChanged() {
    debugPrint("search term: ${controller.text}");

    if (controller.text == _lastTextSearched) {
      return;
    }

    _lastTextSearched = controller.text;
    _lastDateTimeType = DateTime.timestamp();

    Future.delayed(_intervalToWaitAfterType, () {
      if (DateTime.timestamp()
              .difference(_lastDateTimeType)
              .compareTo(_intervalToWaitAfterType) >
          0) {
        if (mounted) {
          context.read<MosaicData>().search(controller.text);
        }
      }
    });
  }
}
