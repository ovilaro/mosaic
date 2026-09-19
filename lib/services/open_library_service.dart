import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mosaic/api_keys.dart';
import 'package:mosaic/models/open_library/open_library_edition.dart';
import 'package:mosaic/models/open_library/open_library_search.dart';
import 'package:mosaic/models/open_library/open_library_work.dart';

import '../models/item.dart';

class OpenLibraryService {
  static const Duration _intervalBetweenRequestsInMs = Duration(
    milliseconds: 250,
  );
  static const Duration _requestTimeout = Duration(seconds: 10);
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

    _latestRequest = DateTime.timestamp();
    final response = await _get(url, "search");
    if (response == null) return emptyList;

    if (response.statusCode == 200) {
      var result = openLibrarySearchFromJson(response.body);
      return _convertToItems(result);
    } else {
      debugPrint(
        "[OpenLibrary]Error search status code: ${response.statusCode},"
        " body: ${response.body}",
      );
      return emptyList;
    }
  }

  List<Item> _convertToItems(OpenLibrarySearch result) {
    List<Item> items = [];
    if (result.docs == null) return items;
    for (var book in result.docs!) {
      var item = Item();
      item.itemCategory = ItemCategory.book;
      item.openLibraryBook = book;
      item.needsDetailRequest = true;
      item.apiId = book.key!; // book.key should not be null
      items.add(item);
    }
    return items;
  }

  Future<OpenLibraryWork?> getWorkDetails(String olid) async {
    if (_latestRequest != null) {
      if (DateTime.timestamp()
              .difference(_latestRequest!)
              .compareTo(_intervalBetweenRequestsInMs) <
          0) {
        debugPrint("Ignoring request, interval too short");
        return null;
      }
    }

    var params = {'fields': 'description,exerpts'};

    Uri url = Uri.https("openlibrary.org", "/works/$olid.json", params);

    _latestRequest = DateTime.timestamp();
    final response = await _get(url, "work");
    if (response == null) return null;

    if (response.statusCode == 200) {
      return openLibraryWorkFromJson(response.body);
    }

    debugPrint(
      "[OpenLibrary]Error work status code: ${response.statusCode},"
      " body: ${response.body}",
    );
    return null;
  }

  Future<OpenLibraryEdition?> getEditionDetails(String olid) async {
    if (_latestRequest != null) {
      if (DateTime.timestamp()
              .difference(_latestRequest!)
              .compareTo(_intervalBetweenRequestsInMs) <
          0) {
        debugPrint("Ignoring request, interval too short");
        return null;
      }
    }

    var params = {'fields': 'contributions'};

    Uri url = Uri.https("openlibrary.org", "/works/$olid.json", params);

    _latestRequest = DateTime.timestamp();
    final response = await _get(url, "edition");
    if (response == null) return null;

    if (response.statusCode == 200) {
      return openLibraryEditionFromJson(response.body);
    }

    debugPrint(
      "[OpenLibrary]Error edition status code: ${response.statusCode},"
      " body: ${response.body}",
    );
    return null;
  }

  /// Performs an Open Library GET with a bounded timeout and logs (rather than
  /// throws) network failures, returning `null` so callers can degrade
  /// gracefully. See [OpenLibraryService._requestTimeout].
  Future<http.Response?> _get(Uri url, String action) async {
    var headers = {'User-Agent': ApiKeys.openLibraryUserAgent};
    try {
      return await http.get(url, headers: headers).timeout(_requestTimeout);
    } on TimeoutException {
      debugPrint(
        "[OpenLibrary] $action request timed out after "
        "${_requestTimeout.inSeconds}s",
      );
    } on http.ClientException catch (e) {
      debugPrint("[OpenLibrary] $action connection failed: ${e.message}");
    } on SocketException catch (e) {
      debugPrint("[OpenLibrary] $action socket error: ${e.message}");
    } catch (e) {
      debugPrint("[OpenLibrary] $action request failed: $e");
    }
    return null;
  }
}
