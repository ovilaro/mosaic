import 'package:flutter/material.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:mosaic/styles/app_styles.dart';
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
  static const Duration _intervalToWaitAfterType = Duration(milliseconds: 750);

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
    return Consumer<MosaicData>(
      builder: (context, mosaicData, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Search"),
            actions: [
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Filters(
                        filterRange: FilterRange.search,
                      );
                    },
                    isScrollControlled: true,
                    useSafeArea: true,
                  ).then((value) {
                    if (context.mounted) {
                      context.read<MosaicData>().search(controller.text);
                    }
                  });
                },
                icon: Icon(
                  Icons.filter_alt,
                  color: mosaicData.isAnyFilterEnabled(FilterRange.search)
                      ? AppStyles.blue
                      : AppStyles.darkGrey,
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: mosaicData.searching
                      ? Center(child: RefreshProgressIndicator())
                      : ListView(
                          children: [
                            for (
                              int i = 0;
                              i < mosaicData.searchResults.length;
                              i++
                            )
                              SearchTile(index: i),
                          ],
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: AppStyles.normalPrimary,
                    autofocus: true,
                    controller: controller,
                    decoration: InputDecoration(
                      suffixIconColor: AppStyles.darkGrey,
                      hint: Text(
                        "write something to search for",
                        style: AppStyles.normalSecundary,
                      ),
                      suffixIcon: Icon(Icons.search),
                      enabledBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: BorderSide(
                          color: AppStyles.blue,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: BorderSide(
                          color: AppStyles.blue,
                          width: 2.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide: BorderSide(
                          color: AppStyles.darkGrey,
                          width: 0.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void textChanged() {
    // debugPrint("search term: ${controller.text}");

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
