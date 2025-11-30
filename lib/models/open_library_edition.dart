// To parse this JSON data, do
//
//     final openLibraryEdition = openLibraryEditionFromJson(jsonString);

import 'dart:convert';

import 'package:isar_community/isar.dart';

part 'open_library_edition.g.dart';

OpenLibraryEdition openLibraryEditionFromJson(String str) =>
    OpenLibraryEdition.fromJson(json.decode(str));

String openLibraryEditionToJson(OpenLibraryEdition data) =>
    json.encode(data.toJson());

@embedded
class OpenLibraryEdition {
  final OpenLibraryEditionType? type;
  final String? title;
  final List<OpenLibraryEditionType>? authors;
  final String? publishDate;
  final List<String>? sourceRecords;
  final int? numberOfPages;
  final List<String>? publishers;
  final String? physicalFormat;
  final String? fullTitle;
  final String? subtitle;
  final String? notes;
  final List<int>? covers;
  final List<OpenLibraryEditionType>? works;
  final String? key;
  final OpenLibraryEditionClassifications? identifiers;
  final List<String>? isbn10;
  final List<String>? isbn13;
  final OpenLibraryEditionClassifications? classifications;
  final List<OpenLibraryEditionContributor>? contributors;
  final List<OpenLibraryEditionType>? languages;
  final String? translationOf;
  final int? latestRevision;
  final int? revision;
  final OpenLibraryEditionCreated? created;
  final OpenLibraryEditionCreated? lastModified;

  OpenLibraryEdition({
    this.type,
    this.title,
    this.authors,
    this.publishDate,
    this.sourceRecords,
    this.numberOfPages,
    this.publishers,
    this.physicalFormat,
    this.fullTitle,
    this.subtitle,
    this.notes,
    this.covers,
    this.works,
    this.key,
    this.identifiers,
    this.isbn10,
    this.isbn13,
    this.classifications,
    this.contributors,
    this.languages,
    this.translationOf,
    this.latestRevision,
    this.revision,
    this.created,
    this.lastModified,
  });

  factory OpenLibraryEdition.fromJson(
    Map<String, dynamic> json,
  ) => OpenLibraryEdition(
    type: json["type"] == null
        ? null
        : OpenLibraryEditionType.fromJson(json["type"]),
    title: json["title"],
    authors: json["authors"] == null
        ? []
        : List<OpenLibraryEditionType>.from(
            json["authors"]!.map((x) => OpenLibraryEditionType.fromJson(x)),
          ),
    publishDate: json["publish_date"],
    sourceRecords: json["source_records"] == null
        ? []
        : List<String>.from(json["source_records"]!.map((x) => x)),
    numberOfPages: json["number_of_pages"],
    publishers: json["publishers"] == null
        ? []
        : List<String>.from(json["publishers"]!.map((x) => x)),
    physicalFormat: json["physical_format"],
    fullTitle: json["full_title"],
    subtitle: json["subtitle"],
    notes: json["notes"],
    covers: json["covers"] == null
        ? []
        : List<int>.from(json["covers"]!.map((x) => x)),
    works: json["works"] == null
        ? []
        : List<OpenLibraryEditionType>.from(
            json["works"]!.map((x) => OpenLibraryEditionType.fromJson(x)),
          ),
    key: json["key"],
    identifiers: json["identifiers"] == null
        ? null
        : OpenLibraryEditionClassifications.fromJson(json["identifiers"]),
    isbn10: json["isbn_10"] == null
        ? []
        : List<String>.from(json["isbn_10"]!.map((x) => x)),
    isbn13: json["isbn_13"] == null
        ? []
        : List<String>.from(json["isbn_13"]!.map((x) => x)),
    classifications: json["classifications"] == null
        ? null
        : OpenLibraryEditionClassifications.fromJson(json["classifications"]),
    contributors: json["contributors"] == null
        ? []
        : List<OpenLibraryEditionContributor>.from(
            json["contributors"]!.map(
              (x) => OpenLibraryEditionContributor.fromJson(x),
            ),
          ),
    languages: json["languages"] == null
        ? []
        : List<OpenLibraryEditionType>.from(
            json["languages"]!.map((x) => OpenLibraryEditionType.fromJson(x)),
          ),
    translationOf: json["translation_of"],
    latestRevision: json["latest_revision"],
    revision: json["revision"],
    created: json["created"] == null
        ? null
        : OpenLibraryEditionCreated.fromJson(json["created"]),
    lastModified: json["last_modified"] == null
        ? null
        : OpenLibraryEditionCreated.fromJson(json["last_modified"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type?.toJson(),
    "title": title,
    "authors": authors == null
        ? []
        : List<dynamic>.from(authors!.map((x) => x.toJson())),
    "publish_date": publishDate,
    "source_records": sourceRecords == null
        ? []
        : List<dynamic>.from(sourceRecords!.map((x) => x)),
    "number_of_pages": numberOfPages,
    "publishers": publishers == null
        ? []
        : List<dynamic>.from(publishers!.map((x) => x)),
    "physical_format": physicalFormat,
    "full_title": fullTitle,
    "subtitle": subtitle,
    "notes": notes,
    "covers": covers == null ? [] : List<dynamic>.from(covers!.map((x) => x)),
    "works": works == null
        ? []
        : List<dynamic>.from(works!.map((x) => x.toJson())),
    "key": key,
    "identifiers": identifiers?.toJson(),
    "isbn_10": isbn10 == null ? [] : List<dynamic>.from(isbn10!.map((x) => x)),
    "isbn_13": isbn13 == null ? [] : List<dynamic>.from(isbn13!.map((x) => x)),
    "classifications": classifications?.toJson(),
    "contributors": contributors == null
        ? []
        : List<dynamic>.from(contributors!.map((x) => x.toJson())),
    "languages": languages == null
        ? []
        : List<dynamic>.from(languages!.map((x) => x.toJson())),
    "translation_of": translationOf,
    "latest_revision": latestRevision,
    "revision": revision,
    "created": created?.toJson(),
    "last_modified": lastModified?.toJson(),
  };
}

@embedded
class OpenLibraryEditionType {
  final String? key;

  OpenLibraryEditionType({this.key});

  factory OpenLibraryEditionType.fromJson(Map<String, dynamic> json) =>
      OpenLibraryEditionType(key: json["key"]);

  Map<String, dynamic> toJson() => {"key": key};
}

@embedded
class OpenLibraryEditionClassifications {
  OpenLibraryEditionClassifications();

  factory OpenLibraryEditionClassifications.fromJson(
    Map<String, dynamic> json,
  ) => OpenLibraryEditionClassifications();

  Map<String, dynamic> toJson() => {};
}

@embedded
class OpenLibraryEditionContributor {
  final String? role;
  final String? name;

  OpenLibraryEditionContributor({this.role, this.name});

  factory OpenLibraryEditionContributor.fromJson(Map<String, dynamic> json) =>
      OpenLibraryEditionContributor(role: json["role"], name: json["name"]);

  Map<String, dynamic> toJson() => {"role": role, "name": name};
}

@embedded
class OpenLibraryEditionCreated {
  final String? type;
  final DateTime? value;

  OpenLibraryEditionCreated({this.type, this.value});

  factory OpenLibraryEditionCreated.fromJson(Map<String, dynamic> json) =>
      OpenLibraryEditionCreated(
        type: json["type"],
        value: json["value"] == null ? null : DateTime.parse(json["value"]),
      );

  Map<String, dynamic> toJson() => {
    "type": type,
    "value": value?.toIso8601String(),
  };
}
