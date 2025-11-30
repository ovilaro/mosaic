// To parse this JSON data, do
//
//     final openLibraryEdition = openLibraryEditionFromJson(jsonString);

import 'dart:convert';

OpenLibraryEdition openLibraryEditionFromJson(String str) =>
    OpenLibraryEdition.fromJson(json.decode(str));

String openLibraryEditionToJson(OpenLibraryEdition data) =>
    json.encode(data.toJson());

class OpenLibraryEdition {
  final Type? type;
  final String? title;
  final List<Type>? authors;
  final String? publishDate;
  final List<String>? sourceRecords;
  final int? numberOfPages;
  final List<String>? publishers;
  final String? physicalFormat;
  final String? fullTitle;
  final String? subtitle;
  final String? notes;
  final List<int>? covers;
  final List<Type>? works;
  final String? key;
  final Classifications? identifiers;
  final List<String>? isbn10;
  final List<String>? isbn13;
  final Classifications? classifications;
  final List<Contributor>? contributors;
  final List<Type>? languages;
  final String? translationOf;
  final int? latestRevision;
  final int? revision;
  final Created? created;
  final Created? lastModified;

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

  factory OpenLibraryEdition.fromJson(Map<String, dynamic> json) =>
      OpenLibraryEdition(
        type: json["type"] == null ? null : Type.fromJson(json["type"]),
        title: json["title"],
        authors: json["authors"] == null
            ? []
            : List<Type>.from(json["authors"]!.map((x) => Type.fromJson(x))),
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
            : List<Type>.from(json["works"]!.map((x) => Type.fromJson(x))),
        key: json["key"],
        identifiers: json["identifiers"] == null
            ? null
            : Classifications.fromJson(json["identifiers"]),
        isbn10: json["isbn_10"] == null
            ? []
            : List<String>.from(json["isbn_10"]!.map((x) => x)),
        isbn13: json["isbn_13"] == null
            ? []
            : List<String>.from(json["isbn_13"]!.map((x) => x)),
        classifications: json["classifications"] == null
            ? null
            : Classifications.fromJson(json["classifications"]),
        contributors: json["contributors"] == null
            ? []
            : List<Contributor>.from(
                json["contributors"]!.map((x) => Contributor.fromJson(x)),
              ),
        languages: json["languages"] == null
            ? []
            : List<Type>.from(json["languages"]!.map((x) => Type.fromJson(x))),
        translationOf: json["translation_of"],
        latestRevision: json["latest_revision"],
        revision: json["revision"],
        created: json["created"] == null
            ? null
            : Created.fromJson(json["created"]),
        lastModified: json["last_modified"] == null
            ? null
            : Created.fromJson(json["last_modified"]),
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

class Type {
  final String? key;

  Type({this.key});

  factory Type.fromJson(Map<String, dynamic> json) => Type(key: json["key"]);

  Map<String, dynamic> toJson() => {"key": key};
}

class Classifications {
  Classifications();

  factory Classifications.fromJson(Map<String, dynamic> json) =>
      Classifications();

  Map<String, dynamic> toJson() => {};
}

class Contributor {
  final String? role;
  final String? name;

  Contributor({this.role, this.name});

  factory Contributor.fromJson(Map<String, dynamic> json) =>
      Contributor(role: json["role"], name: json["name"]);

  Map<String, dynamic> toJson() => {"role": role, "name": name};
}

class Created {
  final String? type;
  final DateTime? value;

  Created({this.type, this.value});

  factory Created.fromJson(Map<String, dynamic> json) => Created(
    type: json["type"],
    value: json["value"] == null ? null : DateTime.parse(json["value"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "value": value?.toIso8601String(),
  };
}
