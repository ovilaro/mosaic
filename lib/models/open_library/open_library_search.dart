// To parse this JSON data, do
//
//     final openLibrarySearch = openLibrarySearchFromJson(jsonString);

import 'dart:convert';

import 'package:isar_community/isar.dart';

part 'open_library_search.g.dart';

OpenLibrarySearch openLibrarySearchFromJson(String str) =>
    OpenLibrarySearch.fromJson(json.decode(str));

String openLibrarySearchToJson(OpenLibrarySearch data) =>
    json.encode(data.toJson());

class OpenLibrarySearch {
  final int? numFound;
  final int? start;
  final bool? numFoundExact;
  final int? openLibrarySearchNumFound;
  final String? documentationUrl;
  final String? q;
  final dynamic offset;
  final List<OpenLibrarySearchDoc>? docs;

  OpenLibrarySearch({
    this.numFound,
    this.start,
    this.numFoundExact,
    this.openLibrarySearchNumFound,
    this.documentationUrl,
    this.q,
    this.offset,
    this.docs,
  });

  factory OpenLibrarySearch.fromJson(Map<String, dynamic> json) =>
      OpenLibrarySearch(
        numFound: json["numFound"],
        start: json["start"],
        numFoundExact: json["numFoundExact"],
        openLibrarySearchNumFound: json["num_found"],
        documentationUrl: json["documentation_url"],
        q: json["q"],
        offset: json["offset"],
        docs: json["docs"] == null
            ? []
            : List<OpenLibrarySearchDoc>.from(
                json["docs"]!.map((x) => OpenLibrarySearchDoc.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
    "numFound": numFound,
    "start": start,
    "numFoundExact": numFoundExact,
    "num_found": openLibrarySearchNumFound,
    "documentation_url": documentationUrl,
    "q": q,
    "offset": offset,
    "docs": docs == null
        ? []
        : List<dynamic>.from(docs!.map((x) => x.toJson())),
  };
}

@embedded
class OpenLibrarySearchDoc {
  final List<String>? authorName;
  final int? firstPublishYear;
  final String? key;
  final int? numberOfPagesMedian;
  final String? title;
  final List<String>? subject;
  final List<String>? place;
  final List<String>? person;
  final OpenLibraryEditions? editions;

  OpenLibrarySearchDoc({
    this.authorName,
    this.firstPublishYear,
    this.key,
    this.numberOfPagesMedian,
    this.title,
    this.subject,
    this.place,
    this.person,
    this.editions,
  });

  factory OpenLibrarySearchDoc.fromJson(Map<String, dynamic> json) =>
      OpenLibrarySearchDoc(
        authorName: json["author_name"] == null
            ? []
            : List<String>.from(json["author_name"]!.map((x) => x)),
        firstPublishYear: json["first_publish_year"],
        key: json["key"],
        numberOfPagesMedian: json["number_of_pages_median"],
        title: json["title"],
        subject: json["subject"] == null
            ? []
            : List<String>.from(json["subject"]!.map((x) => x)),
        place: json["place"] == null
            ? []
            : List<String>.from(json["place"]!.map((x) => x)),
        person: json["person"] == null
            ? []
            : List<String>.from(json["person"]!.map((x) => x)),
        editions: json["editions"] == null
            ? null
            : OpenLibraryEditions.fromJson(json["editions"]),
      );

  Map<String, dynamic> toJson() => {
    "author_name": authorName == null
        ? []
        : List<dynamic>.from(authorName!.map((x) => x)),
    "first_publish_year": firstPublishYear,
    "key": key,
    "number_of_pages_median": numberOfPagesMedian,
    "title": title,
    "subject": subject == null
        ? []
        : List<dynamic>.from(subject!.map((x) => x)),
    "place": place == null ? [] : List<dynamic>.from(place!.map((x) => x)),
    "person": person == null ? [] : List<dynamic>.from(person!.map((x) => x)),
    "editions": editions?.toJson(),
  };
}

@embedded
class OpenLibraryEditions {
  final int? numFound;
  final int? start;
  final bool? numFoundExact;
  final List<OpenLibraryEditionsDoc>? docs;

  OpenLibraryEditions({
    this.numFound,
    this.start,
    this.numFoundExact,
    this.docs,
  });

  factory OpenLibraryEditions.fromJson(Map<String, dynamic> json) =>
      OpenLibraryEditions(
        numFound: json["numFound"],
        start: json["start"],
        numFoundExact: json["numFoundExact"],
        docs: json["docs"] == null
            ? []
            : List<OpenLibraryEditionsDoc>.from(
                json["docs"]!.map((x) => OpenLibraryEditionsDoc.fromJson(x)),
              ),
      );

  Map<String, dynamic> toJson() => {
    "numFound": numFound,
    "start": start,
    "numFoundExact": numFoundExact,
    "docs": docs == null
        ? []
        : List<dynamic>.from(docs!.map((x) => x.toJson())),
  };
}

@embedded
class OpenLibraryEditionsDoc {
  final String? key;
  final String? title;
  final String? subtitle;
  final int? coverI;
  final List<String>? language;
  final List<String>? authorName;
  final List<String>? publisher;
  final List<String>? format;
  final List<String>? publishDate;
  final List<String>? isbn;

  OpenLibraryEditionsDoc({
    this.key,
    this.title,
    this.subtitle,
    this.coverI,
    this.language,
    this.authorName,
    this.publisher,
    this.format,
    this.publishDate,
    this.isbn,
  });

  factory OpenLibraryEditionsDoc.fromJson(Map<String, dynamic> json) =>
      OpenLibraryEditionsDoc(
        key: json["key"],
        title: json["title"],
        subtitle: json["subtitle"],
        coverI: json["cover_i"],
        language: json["language"] == null
            ? []
            : List<String>.from(json["language"]!.map((x) => x)),
        authorName: json["author_name"] == null
            ? []
            : List<String>.from(json["author_name"]!.map((x) => x)),
        publisher: json["publisher"] == null
            ? []
            : List<String>.from(json["publisher"]!.map((x) => x)),
        format: json["format"] == null
            ? []
            : List<String>.from(json["format"]!.map((x) => x)),
        publishDate: json["publish_date"] == null
            ? []
            : List<String>.from(json["publish_date"]!.map((x) => x)),
        isbn: json["isbn"] == null
            ? []
            : List<String>.from(json["isbn"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
    "key": key,
    "title": title,
    "subtitle": subtitle,
    "cover_i": coverI,
    "language": language == null
        ? []
        : List<dynamic>.from(language!.map((x) => x)),
    "author_name": authorName == null
        ? []
        : List<dynamic>.from(authorName!.map((x) => x)),
    "publisher": publisher == null
        ? []
        : List<dynamic>.from(publisher!.map((x) => x)),
    "format": format == null ? [] : List<dynamic>.from(format!.map((x) => x)),
    "publish_date": publishDate == null
        ? []
        : List<dynamic>.from(publishDate!.map((x) => x)),
    "isbn": isbn == null ? [] : List<dynamic>.from(isbn!.map((x) => x)),
  };
}
