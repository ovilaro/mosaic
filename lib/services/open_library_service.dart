import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mosaic/api_keys.dart';
import 'package:mosaic/models/open_library_search_result.dart';

import '../models/item.dart';

class OpenLibraryService {
  static const Duration _intervalBetweenRequestsInMs = Duration(
    milliseconds: 250,
  );
  DateTime? _latestRequest;

  Future<List<Item>> search(String str) async {
    List<Item> emptyList = [];
    if (_latestRequest != null) {
      if (DateTime.timestamp()
              .difference(_latestRequest!)
              .compareTo(_intervalBetweenRequestsInMs) <
          0) {
        debugPrint("Ignoring request, interval too short");
        return emptyList;
      }
    }

    var params = {
      'q': str,
      'fields':
          'key,title,subtitle,author_name,number_of_pages_median,person,place,'
          'subject,first_publish_year,editions,'
          'editions.publish_date,editions.isbn,editions.key,editions.title,'
          'editions.subtitle,editions.author_name,editions.cover_i,'
          'editions.format,editions.publisher,editions.language',
    };

    Uri url = Uri.https("openlibrary.org", "/search.json", params);

    var headers = {'User-Agent': ApiKeys.openLibraryUserAgent};

    _latestRequest = DateTime.timestamp();
    http.Response response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      var result = openLibrarySearchResultFromJson(response.body);
      return _convertToItems(result);
    } else {
      debugPrint(
        "[IGDB]Error games status code: ${response.statusCode},"
        " body: ${response.body}",
      );
      return emptyList;
    }
  }

  List<Item> _convertToItems(OpenLibrarySearchResult result) {
    List<Item> items = [];
    if (result.docs == null) return items;
    for (var book in result.docs!) {
      var item = Item();
      item.itemType = ItemType.book;
      item.openLibraryBook = book;
      item.needsDetailRequest = true;
      item.apiId = book.key!; // book.key should not be null
      items.add(item);
    }
    return items;
  }
}
