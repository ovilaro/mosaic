// To parse this JSON data, do
//
//     final openLibraryWork = openLibraryWorkFromJson(jsonString);

import 'dart:convert';

OpenLibraryWork openLibraryWorkFromJson(String str) =>
    OpenLibraryWork.fromJson(json.decode(str));

String openLibraryWorkToJson(OpenLibraryWork data) =>
    json.encode(data.toJson());

class OpenLibraryWork {
  final String? description;
  final String? title;
  final String? key;
  final List<Author>? authors;
  final Type? type;
  final List<int>? covers;
  final Created? firstSentence;
  final String? firstPublishDate;
  final List<Excerpt>? excerpts;
  final List<String>? deweyNumber;
  final List<Link>? links;
  final List<String>? subjectPlaces;
  final List<String>? subjects;
  final List<String>? subjectPeople;
  final Identifiers? identifiers;
  final int? latestRevision;
  final int? revision;
  final Created? created;
  final Created? lastModified;

  OpenLibraryWork({
    this.description,
    this.title,
    this.key,
    this.authors,
    this.type,
    this.covers,
    this.firstSentence,
    this.firstPublishDate,
    this.excerpts,
    this.deweyNumber,
    this.links,
    this.subjectPlaces,
    this.subjects,
    this.subjectPeople,
    this.identifiers,
    this.latestRevision,
    this.revision,
    this.created,
    this.lastModified,
  });

  factory OpenLibraryWork.fromJson(
    Map<String, dynamic> json,
  ) => OpenLibraryWork(
    description: json["description"],
    title: json["title"],
    key: json["key"],
    authors: json["authors"] == null
        ? []
        : List<Author>.from(json["authors"]!.map((x) => Author.fromJson(x))),
    type: json["type"] == null ? null : Type.fromJson(json["type"]),
    covers: json["covers"] == null
        ? []
        : List<int>.from(json["covers"]!.map((x) => x)),
    firstSentence: json["first_sentence"] == null
        ? null
        : Created.fromJson(json["first_sentence"]),
    firstPublishDate: json["first_publish_date"],
    excerpts: json["excerpts"] == null
        ? []
        : List<Excerpt>.from(json["excerpts"]!.map((x) => Excerpt.fromJson(x))),
    deweyNumber: json["dewey_number"] == null
        ? []
        : List<String>.from(json["dewey_number"]!.map((x) => x)),
    links: json["links"] == null
        ? []
        : List<Link>.from(json["links"]!.map((x) => Link.fromJson(x))),
    subjectPlaces: json["subject_places"] == null
        ? []
        : List<String>.from(json["subject_places"]!.map((x) => x)),
    subjects: json["subjects"] == null
        ? []
        : List<String>.from(json["subjects"]!.map((x) => x)),
    subjectPeople: json["subject_people"] == null
        ? []
        : List<String>.from(json["subject_people"]!.map((x) => x)),
    identifiers: json["identifiers"] == null
        ? null
        : Identifiers.fromJson(json["identifiers"]),
    latestRevision: json["latest_revision"],
    revision: json["revision"],
    created: json["created"] == null ? null : Created.fromJson(json["created"]),
    lastModified: json["last_modified"] == null
        ? null
        : Created.fromJson(json["last_modified"]),
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "title": title,
    "key": key,
    "authors": authors == null
        ? []
        : List<dynamic>.from(authors!.map((x) => x.toJson())),
    "type": type?.toJson(),
    "covers": covers == null ? [] : List<dynamic>.from(covers!.map((x) => x)),
    "first_sentence": firstSentence?.toJson(),
    "first_publish_date": firstPublishDate,
    "excerpts": excerpts == null
        ? []
        : List<dynamic>.from(excerpts!.map((x) => x.toJson())),
    "dewey_number": deweyNumber == null
        ? []
        : List<dynamic>.from(deweyNumber!.map((x) => x)),
    "links": links == null
        ? []
        : List<dynamic>.from(links!.map((x) => x.toJson())),
    "subject_places": subjectPlaces == null
        ? []
        : List<dynamic>.from(subjectPlaces!.map((x) => x)),
    "subjects": subjects == null
        ? []
        : List<dynamic>.from(subjects!.map((x) => x)),
    "subject_people": subjectPeople == null
        ? []
        : List<dynamic>.from(subjectPeople!.map((x) => x)),
    "identifiers": identifiers?.toJson(),
    "latest_revision": latestRevision,
    "revision": revision,
    "created": created?.toJson(),
    "last_modified": lastModified?.toJson(),
  };
}

class Author {
  final Type? author;
  final Type? type;

  Author({this.author, this.type});

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    author: json["author"] == null ? null : Type.fromJson(json["author"]),
    type: json["type"] == null ? null : Type.fromJson(json["type"]),
  );

  Map<String, dynamic> toJson() => {
    "author": author?.toJson(),
    "type": type?.toJson(),
  };
}

class Type {
  final String? key;

  Type({this.key});

  factory Type.fromJson(Map<String, dynamic> json) => Type(key: json["key"]);

  Map<String, dynamic> toJson() => {"key": key};
}

class Created {
  final String? type;
  final String? value;

  Created({this.type, this.value});

  factory Created.fromJson(Map<String, dynamic> json) =>
      Created(type: json["type"], value: json["value"]);

  Map<String, dynamic> toJson() => {"type": type, "value": value};
}

class Excerpt {
  final String? pages;
  final String? excerpt;
  final String? comment;
  final Type? author;

  Excerpt({this.pages, this.excerpt, this.comment, this.author});

  factory Excerpt.fromJson(Map<String, dynamic> json) => Excerpt(
    pages: json["pages"],
    excerpt: json["excerpt"],
    comment: json["comment"],
    author: json["author"] == null ? null : Type.fromJson(json["author"]),
  );

  Map<String, dynamic> toJson() => {
    "pages": pages,
    "excerpt": excerpt,
    "comment": comment,
    "author": author?.toJson(),
  };
}

class Identifiers {
  final List<String>? wikidata;
  final List<String>? bookbrainz;
  final List<String>? musicbrainz;

  Identifiers({this.wikidata, this.bookbrainz, this.musicbrainz});

  factory Identifiers.fromJson(Map<String, dynamic> json) => Identifiers(
    wikidata: json["wikidata"] == null
        ? []
        : List<String>.from(json["wikidata"]!.map((x) => x)),
    bookbrainz: json["bookbrainz"] == null
        ? []
        : List<String>.from(json["bookbrainz"]!.map((x) => x)),
    musicbrainz: json["musicbrainz"] == null
        ? []
        : List<String>.from(json["musicbrainz"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "wikidata": wikidata == null
        ? []
        : List<dynamic>.from(wikidata!.map((x) => x)),
    "bookbrainz": bookbrainz == null
        ? []
        : List<dynamic>.from(bookbrainz!.map((x) => x)),
    "musicbrainz": musicbrainz == null
        ? []
        : List<dynamic>.from(musicbrainz!.map((x) => x)),
  };
}

class Link {
  final String? title;
  final String? url;
  final Type? type;

  Link({this.title, this.url, this.type});

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    title: json["title"],
    url: json["url"],
    type: json["type"] == null ? null : Type.fromJson(json["type"]),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "url": url,
    "type": type?.toJson(),
  };
}
