// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_adapters.dart';

// **************************************************************************
// AdaptersGenerator
// **************************************************************************

class ItemAdapter extends TypeAdapter<Item> {
  @override
  final typeId = 0;

  @override
  Item read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Item()
      ..id = (fields[0] as num).toInt()
      ..igdbGame = fields[1] as IgdbGame?
      ..openLibraryBook = fields[2] as OpenLibrarySearchDoc?
      ..openLibraryWork = fields[3] as OpenLibraryWork?
      ..openLibraryEdition = fields[4] as OpenLibraryEdition?
      ..apiId = fields[5] as String
      ..itemCategory = fields[6] as ItemCategory
      ..itemStatus = fields[7] as ItemStatus
      ..needsDetailRequest = fields[8] as bool
      ..dateTimeCreated = fields[9] as DateTime
      ..dateTimeModified = fields[10] as DateTime;
  }

  @override
  void write(BinaryWriter writer, Item obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.igdbGame)
      ..writeByte(2)
      ..write(obj.openLibraryBook)
      ..writeByte(3)
      ..write(obj.openLibraryWork)
      ..writeByte(4)
      ..write(obj.openLibraryEdition)
      ..writeByte(5)
      ..write(obj.apiId)
      ..writeByte(6)
      ..write(obj.itemCategory)
      ..writeByte(7)
      ..write(obj.itemStatus)
      ..writeByte(8)
      ..write(obj.needsDetailRequest)
      ..writeByte(9)
      ..write(obj.dateTimeCreated)
      ..writeByte(10)
      ..write(obj.dateTimeModified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemCategoryAdapter extends TypeAdapter<ItemCategory> {
  @override
  final typeId = 1;

  @override
  ItemCategory read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemCategory.game;
      case 1:
        return ItemCategory.book;
      default:
        return ItemCategory.game;
    }
  }

  @override
  void write(BinaryWriter writer, ItemCategory obj) {
    switch (obj) {
      case ItemCategory.game:
        writer.writeByte(0);
      case ItemCategory.book:
        writer.writeByte(1);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemCategoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ItemStatusAdapter extends TypeAdapter<ItemStatus> {
  @override
  final typeId = 2;

  @override
  ItemStatus read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ItemStatus.notStarted;
      case 1:
        return ItemStatus.inProgress;
      case 2:
        return ItemStatus.finished;
      default:
        return ItemStatus.notStarted;
    }
  }

  @override
  void write(BinaryWriter writer, ItemStatus obj) {
    switch (obj) {
      case ItemStatus.notStarted:
        writer.writeByte(0);
      case ItemStatus.inProgress:
        writer.writeByte(1);
      case ItemStatus.finished:
        writer.writeByte(2);
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ItemStatusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IgdbGameAdapter extends TypeAdapter<IgdbGame> {
  @override
  final typeId = 3;

  @override
  IgdbGame read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IgdbGame(
      id: (fields[0] as num?)?.toInt(),
      cover: fields[1] as IgdbCover?,
      firstReleaseDate: (fields[2] as num?)?.toInt(),
      gameModes: (fields[3] as List?)?.cast<IgdbGameInfo>(),
      genres: (fields[4] as List?)?.cast<IgdbGameInfo>(),
      name: fields[5] as String?,
      platforms: (fields[6] as List?)?.cast<IgdbGameInfo>(),
      summary: fields[7] as String?,
      themes: (fields[8] as List?)?.cast<IgdbGameInfo>(),
      gameType: fields[9] as GameType?,
      storyline: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, IgdbGame obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cover)
      ..writeByte(2)
      ..write(obj.firstReleaseDate)
      ..writeByte(3)
      ..write(obj.gameModes)
      ..writeByte(4)
      ..write(obj.genres)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.platforms)
      ..writeByte(7)
      ..write(obj.summary)
      ..writeByte(8)
      ..write(obj.themes)
      ..writeByte(9)
      ..write(obj.gameType)
      ..writeByte(10)
      ..write(obj.storyline);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IgdbGameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IgdbCoverAdapter extends TypeAdapter<IgdbCover> {
  @override
  final typeId = 4;

  @override
  IgdbCover read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IgdbCover(
      id: (fields[0] as num?)?.toInt(),
      url: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, IgdbCover obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IgdbCoverAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class IgdbGameInfoAdapter extends TypeAdapter<IgdbGameInfo> {
  @override
  final typeId = 5;

  @override
  IgdbGameInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IgdbGameInfo(
      id: (fields[0] as num?)?.toInt(),
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, IgdbGameInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IgdbGameInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GameTypeAdapter extends TypeAdapter<GameType> {
  @override
  final typeId = 6;

  @override
  GameType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameType(
      id: (fields[0] as num?)?.toInt(),
      type: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, GameType obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibrarySearchDocAdapter extends TypeAdapter<OpenLibrarySearchDoc> {
  @override
  final typeId = 7;

  @override
  OpenLibrarySearchDoc read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibrarySearchDoc(
      authorName: (fields[0] as List?)?.cast<String>(),
      firstPublishYear: (fields[1] as num?)?.toInt(),
      key: fields[2] as String?,
      numberOfPagesMedian: (fields[3] as num?)?.toInt(),
      title: fields[4] as String?,
      subject: (fields[5] as List?)?.cast<String>(),
      place: (fields[6] as List?)?.cast<String>(),
      person: (fields[7] as List?)?.cast<String>(),
      editions: fields[8] as OpenLibraryEditions?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibrarySearchDoc obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.authorName)
      ..writeByte(1)
      ..write(obj.firstPublishYear)
      ..writeByte(2)
      ..write(obj.key)
      ..writeByte(3)
      ..write(obj.numberOfPagesMedian)
      ..writeByte(4)
      ..write(obj.title)
      ..writeByte(5)
      ..write(obj.subject)
      ..writeByte(6)
      ..write(obj.place)
      ..writeByte(7)
      ..write(obj.person)
      ..writeByte(8)
      ..write(obj.editions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibrarySearchDocAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryEditionsAdapter extends TypeAdapter<OpenLibraryEditions> {
  @override
  final typeId = 8;

  @override
  OpenLibraryEditions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryEditions(
      numFound: (fields[0] as num?)?.toInt(),
      start: (fields[1] as num?)?.toInt(),
      numFoundExact: fields[2] as bool?,
      docs: (fields[3] as List?)?.cast<OpenLibraryEditionsDoc>(),
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryEditions obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.numFound)
      ..writeByte(1)
      ..write(obj.start)
      ..writeByte(2)
      ..write(obj.numFoundExact)
      ..writeByte(3)
      ..write(obj.docs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryEditionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryEditionsDocAdapter
    extends TypeAdapter<OpenLibraryEditionsDoc> {
  @override
  final typeId = 9;

  @override
  OpenLibraryEditionsDoc read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryEditionsDoc(
      key: fields[0] as String?,
      title: fields[1] as String?,
      subtitle: fields[2] as String?,
      coverI: (fields[3] as num?)?.toInt(),
      language: (fields[4] as List?)?.cast<String>(),
      authorName: (fields[5] as List?)?.cast<String>(),
      publisher: (fields[6] as List?)?.cast<String>(),
      format: (fields[7] as List?)?.cast<String>(),
      publishDate: (fields[8] as List?)?.cast<String>(),
      isbn: (fields[9] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryEditionsDoc obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.subtitle)
      ..writeByte(3)
      ..write(obj.coverI)
      ..writeByte(4)
      ..write(obj.language)
      ..writeByte(5)
      ..write(obj.authorName)
      ..writeByte(6)
      ..write(obj.publisher)
      ..writeByte(7)
      ..write(obj.format)
      ..writeByte(8)
      ..write(obj.publishDate)
      ..writeByte(9)
      ..write(obj.isbn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryEditionsDocAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryWorkAdapter extends TypeAdapter<OpenLibraryWork> {
  @override
  final typeId = 10;

  @override
  OpenLibraryWork read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryWork(
      description: fields[0] as String?,
      title: fields[1] as String?,
      key: fields[2] as String?,
      authors: (fields[3] as List?)?.cast<OpenLibraryAuthor>(),
      type: fields[4] as OpenLibraryType?,
      covers: (fields[5] as List?)?.cast<int>(),
      firstSentence: fields[6] as OpenLibraryCreated?,
      firstPublishDate: fields[7] as String?,
      excerpts: (fields[8] as List?)?.cast<OpenLibraryExcerpt>(),
      deweyNumber: (fields[9] as List?)?.cast<String>(),
      links: (fields[10] as List?)?.cast<OpenLibraryLink>(),
      subjectPlaces: (fields[11] as List?)?.cast<String>(),
      subjects: (fields[12] as List?)?.cast<String>(),
      subjectPeople: (fields[13] as List?)?.cast<String>(),
      identifiers: fields[14] as OpenLibraryIdentifiers?,
      latestRevision: (fields[15] as num?)?.toInt(),
      revision: (fields[16] as num?)?.toInt(),
      created: fields[17] as OpenLibraryCreated?,
      lastModified: fields[18] as OpenLibraryCreated?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryWork obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.description)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.key)
      ..writeByte(3)
      ..write(obj.authors)
      ..writeByte(4)
      ..write(obj.type)
      ..writeByte(5)
      ..write(obj.covers)
      ..writeByte(6)
      ..write(obj.firstSentence)
      ..writeByte(7)
      ..write(obj.firstPublishDate)
      ..writeByte(8)
      ..write(obj.excerpts)
      ..writeByte(9)
      ..write(obj.deweyNumber)
      ..writeByte(10)
      ..write(obj.links)
      ..writeByte(11)
      ..write(obj.subjectPlaces)
      ..writeByte(12)
      ..write(obj.subjects)
      ..writeByte(13)
      ..write(obj.subjectPeople)
      ..writeByte(14)
      ..write(obj.identifiers)
      ..writeByte(15)
      ..write(obj.latestRevision)
      ..writeByte(16)
      ..write(obj.revision)
      ..writeByte(17)
      ..write(obj.created)
      ..writeByte(18)
      ..write(obj.lastModified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryWorkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryAuthorAdapter extends TypeAdapter<OpenLibraryAuthor> {
  @override
  final typeId = 11;

  @override
  OpenLibraryAuthor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryAuthor(
      author: fields[0] as OpenLibraryType?,
      type: fields[1] as OpenLibraryType?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryAuthor obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.author)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryAuthorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryTypeAdapter extends TypeAdapter<OpenLibraryType> {
  @override
  final typeId = 12;

  @override
  OpenLibraryType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryType(key: fields[0] as String?);
  }

  @override
  void write(BinaryWriter writer, OpenLibraryType obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.key);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryCreatedAdapter extends TypeAdapter<OpenLibraryCreated> {
  @override
  final typeId = 13;

  @override
  OpenLibraryCreated read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryCreated(
      type: fields[0] as String?,
      value: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryCreated obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryCreatedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryExcerptAdapter extends TypeAdapter<OpenLibraryExcerpt> {
  @override
  final typeId = 14;

  @override
  OpenLibraryExcerpt read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryExcerpt(
      pages: fields[0] as String?,
      excerpt: fields[1] as String?,
      comment: fields[2] as String?,
      author: fields[3] as OpenLibraryType?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryExcerpt obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.pages)
      ..writeByte(1)
      ..write(obj.excerpt)
      ..writeByte(2)
      ..write(obj.comment)
      ..writeByte(3)
      ..write(obj.author);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryExcerptAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryIdentifiersAdapter
    extends TypeAdapter<OpenLibraryIdentifiers> {
  @override
  final typeId = 15;

  @override
  OpenLibraryIdentifiers read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryIdentifiers(
      wikidata: (fields[0] as List?)?.cast<String>(),
      bookbrainz: (fields[1] as List?)?.cast<String>(),
      musicbrainz: (fields[2] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryIdentifiers obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.wikidata)
      ..writeByte(1)
      ..write(obj.bookbrainz)
      ..writeByte(2)
      ..write(obj.musicbrainz);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryIdentifiersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryLinkAdapter extends TypeAdapter<OpenLibraryLink> {
  @override
  final typeId = 16;

  @override
  OpenLibraryLink read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryLink(
      title: fields[0] as String?,
      url: fields[1] as String?,
      type: fields[2] as OpenLibraryType?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryLink obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryLinkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryEditionAdapter extends TypeAdapter<OpenLibraryEdition> {
  @override
  final typeId = 17;

  @override
  OpenLibraryEdition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryEdition(
      type: fields[0] as OpenLibraryEditionType?,
      title: fields[1] as String?,
      authors: (fields[2] as List?)?.cast<OpenLibraryEditionType>(),
      publishDate: fields[3] as String?,
      sourceRecords: (fields[4] as List?)?.cast<String>(),
      numberOfPages: (fields[5] as num?)?.toInt(),
      publishers: (fields[6] as List?)?.cast<String>(),
      physicalFormat: fields[7] as String?,
      fullTitle: fields[8] as String?,
      subtitle: fields[9] as String?,
      notes: fields[10] as String?,
      covers: (fields[11] as List?)?.cast<int>(),
      works: (fields[12] as List?)?.cast<OpenLibraryEditionType>(),
      key: fields[13] as String?,
      identifiers: fields[14] as OpenLibraryEditionClassifications?,
      isbn10: (fields[15] as List?)?.cast<String>(),
      isbn13: (fields[16] as List?)?.cast<String>(),
      classifications: fields[17] as OpenLibraryEditionClassifications?,
      contributors: (fields[18] as List?)
          ?.cast<OpenLibraryEditionContributor>(),
      languages: (fields[19] as List?)?.cast<OpenLibraryEditionType>(),
      translationOf: fields[20] as String?,
      latestRevision: (fields[21] as num?)?.toInt(),
      revision: (fields[22] as num?)?.toInt(),
      created: fields[23] as OpenLibraryEditionCreated?,
      lastModified: fields[24] as OpenLibraryEditionCreated?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryEdition obj) {
    writer
      ..writeByte(25)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.authors)
      ..writeByte(3)
      ..write(obj.publishDate)
      ..writeByte(4)
      ..write(obj.sourceRecords)
      ..writeByte(5)
      ..write(obj.numberOfPages)
      ..writeByte(6)
      ..write(obj.publishers)
      ..writeByte(7)
      ..write(obj.physicalFormat)
      ..writeByte(8)
      ..write(obj.fullTitle)
      ..writeByte(9)
      ..write(obj.subtitle)
      ..writeByte(10)
      ..write(obj.notes)
      ..writeByte(11)
      ..write(obj.covers)
      ..writeByte(12)
      ..write(obj.works)
      ..writeByte(13)
      ..write(obj.key)
      ..writeByte(14)
      ..write(obj.identifiers)
      ..writeByte(15)
      ..write(obj.isbn10)
      ..writeByte(16)
      ..write(obj.isbn13)
      ..writeByte(17)
      ..write(obj.classifications)
      ..writeByte(18)
      ..write(obj.contributors)
      ..writeByte(19)
      ..write(obj.languages)
      ..writeByte(20)
      ..write(obj.translationOf)
      ..writeByte(21)
      ..write(obj.latestRevision)
      ..writeByte(22)
      ..write(obj.revision)
      ..writeByte(23)
      ..write(obj.created)
      ..writeByte(24)
      ..write(obj.lastModified);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryEditionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryEditionTypeAdapter
    extends TypeAdapter<OpenLibraryEditionType> {
  @override
  final typeId = 18;

  @override
  OpenLibraryEditionType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryEditionType(key: fields[0] as String?);
  }

  @override
  void write(BinaryWriter writer, OpenLibraryEditionType obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.key);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryEditionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryEditionClassificationsAdapter
    extends TypeAdapter<OpenLibraryEditionClassifications> {
  @override
  final typeId = 19;

  @override
  OpenLibraryEditionClassifications read(BinaryReader reader) {
    reader.readByte();
    return OpenLibraryEditionClassifications();
  }

  @override
  void write(BinaryWriter writer, OpenLibraryEditionClassifications obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryEditionClassificationsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryEditionContributorAdapter
    extends TypeAdapter<OpenLibraryEditionContributor> {
  @override
  final typeId = 20;

  @override
  OpenLibraryEditionContributor read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryEditionContributor(
      role: fields[0] as String?,
      name: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryEditionContributor obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.role)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryEditionContributorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OpenLibraryEditionCreatedAdapter
    extends TypeAdapter<OpenLibraryEditionCreated> {
  @override
  final typeId = 21;

  @override
  OpenLibraryEditionCreated read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OpenLibraryEditionCreated(
      type: fields[0] as String?,
      value: fields[1] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, OpenLibraryEditionCreated obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OpenLibraryEditionCreatedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
