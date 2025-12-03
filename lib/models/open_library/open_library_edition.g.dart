// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_library_edition.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryEditionSchema = Schema(
  name: r'OpenLibraryEdition',
  id: -4655902688847673994,
  properties: {
    r'authors': PropertySchema(
      id: 0,
      name: r'authors',
      type: IsarType.objectList,

      target: r'OpenLibraryEditionType',
    ),
    r'classifications': PropertySchema(
      id: 1,
      name: r'classifications',
      type: IsarType.object,

      target: r'OpenLibraryEditionClassifications',
    ),
    r'contributors': PropertySchema(
      id: 2,
      name: r'contributors',
      type: IsarType.objectList,

      target: r'OpenLibraryEditionContributor',
    ),
    r'covers': PropertySchema(id: 3, name: r'covers', type: IsarType.longList),
    r'created': PropertySchema(
      id: 4,
      name: r'created',
      type: IsarType.object,

      target: r'OpenLibraryEditionCreated',
    ),
    r'fullTitle': PropertySchema(
      id: 5,
      name: r'fullTitle',
      type: IsarType.string,
    ),
    r'identifiers': PropertySchema(
      id: 6,
      name: r'identifiers',
      type: IsarType.object,

      target: r'OpenLibraryEditionClassifications',
    ),
    r'isbn10': PropertySchema(
      id: 7,
      name: r'isbn10',
      type: IsarType.stringList,
    ),
    r'isbn13': PropertySchema(
      id: 8,
      name: r'isbn13',
      type: IsarType.stringList,
    ),
    r'key': PropertySchema(id: 9, name: r'key', type: IsarType.string),
    r'languages': PropertySchema(
      id: 10,
      name: r'languages',
      type: IsarType.objectList,

      target: r'OpenLibraryEditionType',
    ),
    r'lastModified': PropertySchema(
      id: 11,
      name: r'lastModified',
      type: IsarType.object,

      target: r'OpenLibraryEditionCreated',
    ),
    r'latestRevision': PropertySchema(
      id: 12,
      name: r'latestRevision',
      type: IsarType.long,
    ),
    r'notes': PropertySchema(id: 13, name: r'notes', type: IsarType.string),
    r'numberOfPages': PropertySchema(
      id: 14,
      name: r'numberOfPages',
      type: IsarType.long,
    ),
    r'physicalFormat': PropertySchema(
      id: 15,
      name: r'physicalFormat',
      type: IsarType.string,
    ),
    r'publishDate': PropertySchema(
      id: 16,
      name: r'publishDate',
      type: IsarType.string,
    ),
    r'publishers': PropertySchema(
      id: 17,
      name: r'publishers',
      type: IsarType.stringList,
    ),
    r'revision': PropertySchema(id: 18, name: r'revision', type: IsarType.long),
    r'sourceRecords': PropertySchema(
      id: 19,
      name: r'sourceRecords',
      type: IsarType.stringList,
    ),
    r'subtitle': PropertySchema(
      id: 20,
      name: r'subtitle',
      type: IsarType.string,
    ),
    r'title': PropertySchema(id: 21, name: r'title', type: IsarType.string),
    r'translationOf': PropertySchema(
      id: 22,
      name: r'translationOf',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 23,
      name: r'type',
      type: IsarType.object,

      target: r'OpenLibraryEditionType',
    ),
    r'works': PropertySchema(
      id: 24,
      name: r'works',
      type: IsarType.objectList,

      target: r'OpenLibraryEditionType',
    ),
  },

  estimateSize: _openLibraryEditionEstimateSize,
  serialize: _openLibraryEditionSerialize,
  deserialize: _openLibraryEditionDeserialize,
  deserializeProp: _openLibraryEditionDeserializeProp,
);

int _openLibraryEditionEstimateSize(
  OpenLibraryEdition object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.authors;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryEditionType]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryEditionTypeSchema.estimateSize(
            value,
            offsets,
            allOffsets,
          );
        }
      }
    }
  }
  {
    final value = object.classifications;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryEditionClassificationsSchema.estimateSize(
            value,
            allOffsets[OpenLibraryEditionClassifications]!,
            allOffsets,
          );
    }
  }
  {
    final list = object.contributors;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryEditionContributor]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryEditionContributorSchema.estimateSize(
            value,
            offsets,
            allOffsets,
          );
        }
      }
    }
  }
  {
    final value = object.covers;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.created;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryEditionCreatedSchema.estimateSize(
            value,
            allOffsets[OpenLibraryEditionCreated]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.fullTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.identifiers;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryEditionClassificationsSchema.estimateSize(
            value,
            allOffsets[OpenLibraryEditionClassifications]!,
            allOffsets,
          );
    }
  }
  {
    final list = object.isbn10;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.isbn13;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.key;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.languages;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryEditionType]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryEditionTypeSchema.estimateSize(
            value,
            offsets,
            allOffsets,
          );
        }
      }
    }
  }
  {
    final value = object.lastModified;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryEditionCreatedSchema.estimateSize(
            value,
            allOffsets[OpenLibraryEditionCreated]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.physicalFormat;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.publishDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.publishers;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final list = object.sourceRecords;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.subtitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.translationOf;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryEditionTypeSchema.estimateSize(
            value,
            allOffsets[OpenLibraryEditionType]!,
            allOffsets,
          );
    }
  }
  {
    final list = object.works;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryEditionType]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryEditionTypeSchema.estimateSize(
            value,
            offsets,
            allOffsets,
          );
        }
      }
    }
  }
  return bytesCount;
}

void _openLibraryEditionSerialize(
  OpenLibraryEdition object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<OpenLibraryEditionType>(
    offsets[0],
    allOffsets,
    OpenLibraryEditionTypeSchema.serialize,
    object.authors,
  );
  writer.writeObject<OpenLibraryEditionClassifications>(
    offsets[1],
    allOffsets,
    OpenLibraryEditionClassificationsSchema.serialize,
    object.classifications,
  );
  writer.writeObjectList<OpenLibraryEditionContributor>(
    offsets[2],
    allOffsets,
    OpenLibraryEditionContributorSchema.serialize,
    object.contributors,
  );
  writer.writeLongList(offsets[3], object.covers);
  writer.writeObject<OpenLibraryEditionCreated>(
    offsets[4],
    allOffsets,
    OpenLibraryEditionCreatedSchema.serialize,
    object.created,
  );
  writer.writeString(offsets[5], object.fullTitle);
  writer.writeObject<OpenLibraryEditionClassifications>(
    offsets[6],
    allOffsets,
    OpenLibraryEditionClassificationsSchema.serialize,
    object.identifiers,
  );
  writer.writeStringList(offsets[7], object.isbn10);
  writer.writeStringList(offsets[8], object.isbn13);
  writer.writeString(offsets[9], object.key);
  writer.writeObjectList<OpenLibraryEditionType>(
    offsets[10],
    allOffsets,
    OpenLibraryEditionTypeSchema.serialize,
    object.languages,
  );
  writer.writeObject<OpenLibraryEditionCreated>(
    offsets[11],
    allOffsets,
    OpenLibraryEditionCreatedSchema.serialize,
    object.lastModified,
  );
  writer.writeLong(offsets[12], object.latestRevision);
  writer.writeString(offsets[13], object.notes);
  writer.writeLong(offsets[14], object.numberOfPages);
  writer.writeString(offsets[15], object.physicalFormat);
  writer.writeString(offsets[16], object.publishDate);
  writer.writeStringList(offsets[17], object.publishers);
  writer.writeLong(offsets[18], object.revision);
  writer.writeStringList(offsets[19], object.sourceRecords);
  writer.writeString(offsets[20], object.subtitle);
  writer.writeString(offsets[21], object.title);
  writer.writeString(offsets[22], object.translationOf);
  writer.writeObject<OpenLibraryEditionType>(
    offsets[23],
    allOffsets,
    OpenLibraryEditionTypeSchema.serialize,
    object.type,
  );
  writer.writeObjectList<OpenLibraryEditionType>(
    offsets[24],
    allOffsets,
    OpenLibraryEditionTypeSchema.serialize,
    object.works,
  );
}

OpenLibraryEdition _openLibraryEditionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryEdition(
    authors: reader.readObjectList<OpenLibraryEditionType>(
      offsets[0],
      OpenLibraryEditionTypeSchema.deserialize,
      allOffsets,
      OpenLibraryEditionType(),
    ),
    classifications: reader.readObjectOrNull<OpenLibraryEditionClassifications>(
      offsets[1],
      OpenLibraryEditionClassificationsSchema.deserialize,
      allOffsets,
    ),
    contributors: reader.readObjectList<OpenLibraryEditionContributor>(
      offsets[2],
      OpenLibraryEditionContributorSchema.deserialize,
      allOffsets,
      OpenLibraryEditionContributor(),
    ),
    covers: reader.readLongList(offsets[3]),
    created: reader.readObjectOrNull<OpenLibraryEditionCreated>(
      offsets[4],
      OpenLibraryEditionCreatedSchema.deserialize,
      allOffsets,
    ),
    fullTitle: reader.readStringOrNull(offsets[5]),
    identifiers: reader.readObjectOrNull<OpenLibraryEditionClassifications>(
      offsets[6],
      OpenLibraryEditionClassificationsSchema.deserialize,
      allOffsets,
    ),
    isbn10: reader.readStringList(offsets[7]),
    isbn13: reader.readStringList(offsets[8]),
    key: reader.readStringOrNull(offsets[9]),
    languages: reader.readObjectList<OpenLibraryEditionType>(
      offsets[10],
      OpenLibraryEditionTypeSchema.deserialize,
      allOffsets,
      OpenLibraryEditionType(),
    ),
    lastModified: reader.readObjectOrNull<OpenLibraryEditionCreated>(
      offsets[11],
      OpenLibraryEditionCreatedSchema.deserialize,
      allOffsets,
    ),
    latestRevision: reader.readLongOrNull(offsets[12]),
    notes: reader.readStringOrNull(offsets[13]),
    numberOfPages: reader.readLongOrNull(offsets[14]),
    physicalFormat: reader.readStringOrNull(offsets[15]),
    publishDate: reader.readStringOrNull(offsets[16]),
    publishers: reader.readStringList(offsets[17]),
    revision: reader.readLongOrNull(offsets[18]),
    sourceRecords: reader.readStringList(offsets[19]),
    subtitle: reader.readStringOrNull(offsets[20]),
    title: reader.readStringOrNull(offsets[21]),
    translationOf: reader.readStringOrNull(offsets[22]),
    type: reader.readObjectOrNull<OpenLibraryEditionType>(
      offsets[23],
      OpenLibraryEditionTypeSchema.deserialize,
      allOffsets,
    ),
    works: reader.readObjectList<OpenLibraryEditionType>(
      offsets[24],
      OpenLibraryEditionTypeSchema.deserialize,
      allOffsets,
      OpenLibraryEditionType(),
    ),
  );
  return object;
}

P _openLibraryEditionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<OpenLibraryEditionType>(
            offset,
            OpenLibraryEditionTypeSchema.deserialize,
            allOffsets,
            OpenLibraryEditionType(),
          ))
          as P;
    case 1:
      return (reader.readObjectOrNull<OpenLibraryEditionClassifications>(
            offset,
            OpenLibraryEditionClassificationsSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 2:
      return (reader.readObjectList<OpenLibraryEditionContributor>(
            offset,
            OpenLibraryEditionContributorSchema.deserialize,
            allOffsets,
            OpenLibraryEditionContributor(),
          ))
          as P;
    case 3:
      return (reader.readLongList(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<OpenLibraryEditionCreated>(
            offset,
            OpenLibraryEditionCreatedSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readObjectOrNull<OpenLibraryEditionClassifications>(
            offset,
            OpenLibraryEditionClassificationsSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 7:
      return (reader.readStringList(offset)) as P;
    case 8:
      return (reader.readStringList(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readObjectList<OpenLibraryEditionType>(
            offset,
            OpenLibraryEditionTypeSchema.deserialize,
            allOffsets,
            OpenLibraryEditionType(),
          ))
          as P;
    case 11:
      return (reader.readObjectOrNull<OpenLibraryEditionCreated>(
            offset,
            OpenLibraryEditionCreatedSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringList(offset)) as P;
    case 18:
      return (reader.readLongOrNull(offset)) as P;
    case 19:
      return (reader.readStringList(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readObjectOrNull<OpenLibraryEditionType>(
            offset,
            OpenLibraryEditionTypeSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 24:
      return (reader.readObjectList<OpenLibraryEditionType>(
            offset,
            OpenLibraryEditionTypeSchema.deserialize,
            allOffsets,
            OpenLibraryEditionType(),
          ))
          as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryEditionQueryFilter
    on QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QFilterCondition> {
  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'authors'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'authors'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'authors',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  classificationsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'classifications'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  classificationsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'classifications'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'contributors'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'contributors'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'contributors', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'contributors', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'contributors', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'contributors', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'contributors', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'contributors',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'covers'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'covers'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'covers', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversElementGreaterThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'covers',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversElementLessThan(int value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'covers',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'covers',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  coversLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'covers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  createdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'created'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  createdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'created'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'fullTitle'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'fullTitle'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'fullTitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'fullTitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'fullTitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'fullTitle',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'fullTitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'fullTitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'fullTitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'fullTitle',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'fullTitle', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  fullTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'fullTitle', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  identifiersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'identifiers'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  identifiersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'identifiers'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'isbn10'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'isbn10'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'isbn10',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'isbn10',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'isbn10',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'isbn10',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'isbn10',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'isbn10',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'isbn10',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'isbn10',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isbn10', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10ElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'isbn10', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10LengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn10', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn10', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn10', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10LengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn10', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10LengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn10', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn10LengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'isbn10',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'isbn13'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'isbn13'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'isbn13',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'isbn13',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'isbn13',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'isbn13',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'isbn13',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'isbn13',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'isbn13',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'isbn13',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isbn13', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13ElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'isbn13', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13LengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn13', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn13', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn13', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13LengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn13', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13LengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn13', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  isbn13LengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'isbn13',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'key'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'key'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'key',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'key',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'languages'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'languages'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'languages', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'languages', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'languages', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'languages', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'languages', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'languages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  lastModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'lastModified'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  lastModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'lastModified'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  latestRevisionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'latestRevision'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  latestRevisionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'latestRevision'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  latestRevisionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'latestRevision', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  latestRevisionGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'latestRevision',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  latestRevisionLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'latestRevision',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  latestRevisionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'latestRevision',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'notes'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'notes'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'notes',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'notes',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'notes',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'notes', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'notes', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  numberOfPagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'numberOfPages'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  numberOfPagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'numberOfPages'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  numberOfPagesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'numberOfPages', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  numberOfPagesGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'numberOfPages',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  numberOfPagesLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'numberOfPages',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  numberOfPagesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'numberOfPages',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'physicalFormat'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'physicalFormat'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'physicalFormat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'physicalFormat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'physicalFormat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'physicalFormat',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'physicalFormat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'physicalFormat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'physicalFormat',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'physicalFormat',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'physicalFormat', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  physicalFormatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'physicalFormat', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'publishDate'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'publishDate'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'publishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'publishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'publishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'publishDate',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'publishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'publishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'publishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'publishDate',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'publishDate', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'publishDate', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'publishers'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'publishers'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'publishers',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'publishers',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'publishers',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'publishers',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'publishers',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'publishers',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'publishers',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'publishers',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'publishers', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'publishers', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishers', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishers', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishers', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishers', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishers', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  publishersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'publishers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  revisionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'revision'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  revisionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'revision'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  revisionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'revision', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  revisionGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'revision',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  revisionLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'revision',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  revisionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'revision',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'sourceRecords'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'sourceRecords'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'sourceRecords',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'sourceRecords',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'sourceRecords',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'sourceRecords',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'sourceRecords',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'sourceRecords',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'sourceRecords',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'sourceRecords',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'sourceRecords', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'sourceRecords', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'sourceRecords', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'sourceRecords', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'sourceRecords', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'sourceRecords', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'sourceRecords', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  sourceRecordsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sourceRecords',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'subtitle'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'subtitle'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subtitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subtitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subtitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subtitle',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subtitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subtitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subtitle',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subtitle',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subtitle', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  subtitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subtitle', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'title'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'title'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'title',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'title',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'title',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'translationOf'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'translationOf'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'translationOf',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'translationOf',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'translationOf',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'translationOf',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'translationOf',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'translationOf',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'translationOf',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'translationOf',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'translationOf', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  translationOfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'translationOf', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'works'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'works'),
      );
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'works', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'works', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'works', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'works', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'works', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'works',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension OpenLibraryEditionQueryObject
    on QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QFilterCondition> {
  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  authorsElement(FilterQuery<OpenLibraryEditionType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'authors');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  classifications(FilterQuery<OpenLibraryEditionClassifications> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'classifications');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  contributorsElement(FilterQuery<OpenLibraryEditionContributor> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'contributors');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  created(FilterQuery<OpenLibraryEditionCreated> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'created');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  identifiers(FilterQuery<OpenLibraryEditionClassifications> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'identifiers');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  languagesElement(FilterQuery<OpenLibraryEditionType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'languages');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  lastModified(FilterQuery<OpenLibraryEditionCreated> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lastModified');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  type(FilterQuery<OpenLibraryEditionType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'type');
    });
  }

  QueryBuilder<OpenLibraryEdition, OpenLibraryEdition, QAfterFilterCondition>
  worksElement(FilterQuery<OpenLibraryEditionType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'works');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryEditionTypeSchema = Schema(
  name: r'OpenLibraryEditionType',
  id: -4345875155289211207,
  properties: {
    r'key': PropertySchema(id: 0, name: r'key', type: IsarType.string),
  },

  estimateSize: _openLibraryEditionTypeEstimateSize,
  serialize: _openLibraryEditionTypeSerialize,
  deserialize: _openLibraryEditionTypeDeserialize,
  deserializeProp: _openLibraryEditionTypeDeserializeProp,
);

int _openLibraryEditionTypeEstimateSize(
  OpenLibraryEditionType object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.key;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _openLibraryEditionTypeSerialize(
  OpenLibraryEditionType object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
}

OpenLibraryEditionType _openLibraryEditionTypeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryEditionType(
    key: reader.readStringOrNull(offsets[0]),
  );
  return object;
}

P _openLibraryEditionTypeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryEditionTypeQueryFilter
    on
        QueryBuilder<
          OpenLibraryEditionType,
          OpenLibraryEditionType,
          QFilterCondition
        > {
  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'key'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'key'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'key',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'key',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'key',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionType,
    OpenLibraryEditionType,
    QAfterFilterCondition
  >
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }
}

extension OpenLibraryEditionTypeQueryObject
    on
        QueryBuilder<
          OpenLibraryEditionType,
          OpenLibraryEditionType,
          QFilterCondition
        > {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryEditionClassificationsSchema = Schema(
  name: r'OpenLibraryEditionClassifications',
  id: 7047449417383085002,
  properties: {},

  estimateSize: _openLibraryEditionClassificationsEstimateSize,
  serialize: _openLibraryEditionClassificationsSerialize,
  deserialize: _openLibraryEditionClassificationsDeserialize,
  deserializeProp: _openLibraryEditionClassificationsDeserializeProp,
);

int _openLibraryEditionClassificationsEstimateSize(
  OpenLibraryEditionClassifications object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _openLibraryEditionClassificationsSerialize(
  OpenLibraryEditionClassifications object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {}
OpenLibraryEditionClassifications _openLibraryEditionClassificationsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryEditionClassifications();
  return object;
}

P _openLibraryEditionClassificationsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryEditionClassificationsQueryFilter
    on
        QueryBuilder<
          OpenLibraryEditionClassifications,
          OpenLibraryEditionClassifications,
          QFilterCondition
        > {}

extension OpenLibraryEditionClassificationsQueryObject
    on
        QueryBuilder<
          OpenLibraryEditionClassifications,
          OpenLibraryEditionClassifications,
          QFilterCondition
        > {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryEditionContributorSchema = Schema(
  name: r'OpenLibraryEditionContributor',
  id: 3906346115532014434,
  properties: {
    r'name': PropertySchema(id: 0, name: r'name', type: IsarType.string),
    r'role': PropertySchema(id: 1, name: r'role', type: IsarType.string),
  },

  estimateSize: _openLibraryEditionContributorEstimateSize,
  serialize: _openLibraryEditionContributorSerialize,
  deserialize: _openLibraryEditionContributorDeserialize,
  deserializeProp: _openLibraryEditionContributorDeserializeProp,
);

int _openLibraryEditionContributorEstimateSize(
  OpenLibraryEditionContributor object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.role;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _openLibraryEditionContributorSerialize(
  OpenLibraryEditionContributor object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeString(offsets[1], object.role);
}

OpenLibraryEditionContributor _openLibraryEditionContributorDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryEditionContributor(
    name: reader.readStringOrNull(offsets[0]),
    role: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _openLibraryEditionContributorDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryEditionContributorQueryFilter
    on
        QueryBuilder<
          OpenLibraryEditionContributor,
          OpenLibraryEditionContributor,
          QFilterCondition
        > {
  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'name'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'name'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'name',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'name',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'name',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'role'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'role'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'role',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'role',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'role',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'role',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'role',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'role',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'role',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'role',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'role', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionContributor,
    OpenLibraryEditionContributor,
    QAfterFilterCondition
  >
  roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'role', value: ''),
      );
    });
  }
}

extension OpenLibraryEditionContributorQueryObject
    on
        QueryBuilder<
          OpenLibraryEditionContributor,
          OpenLibraryEditionContributor,
          QFilterCondition
        > {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryEditionCreatedSchema = Schema(
  name: r'OpenLibraryEditionCreated',
  id: 4034142504831788879,
  properties: {
    r'type': PropertySchema(id: 0, name: r'type', type: IsarType.string),
    r'value': PropertySchema(id: 1, name: r'value', type: IsarType.dateTime),
  },

  estimateSize: _openLibraryEditionCreatedEstimateSize,
  serialize: _openLibraryEditionCreatedSerialize,
  deserialize: _openLibraryEditionCreatedDeserialize,
  deserializeProp: _openLibraryEditionCreatedDeserializeProp,
);

int _openLibraryEditionCreatedEstimateSize(
  OpenLibraryEditionCreated object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _openLibraryEditionCreatedSerialize(
  OpenLibraryEditionCreated object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.type);
  writer.writeDateTime(offsets[1], object.value);
}

OpenLibraryEditionCreated _openLibraryEditionCreatedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryEditionCreated(
    type: reader.readStringOrNull(offsets[0]),
    value: reader.readDateTimeOrNull(offsets[1]),
  );
  return object;
}

P _openLibraryEditionCreatedDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryEditionCreatedQueryFilter
    on
        QueryBuilder<
          OpenLibraryEditionCreated,
          OpenLibraryEditionCreated,
          QFilterCondition
        > {
  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'type'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'type'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'type',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'type',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'type',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'type', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'type', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'value'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'value'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  valueEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'value', value: value),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  valueGreaterThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'value',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  valueLessThan(DateTime? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'value',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionCreated,
    OpenLibraryEditionCreated,
    QAfterFilterCondition
  >
  valueBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'value',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension OpenLibraryEditionCreatedQueryObject
    on
        QueryBuilder<
          OpenLibraryEditionCreated,
          OpenLibraryEditionCreated,
          QFilterCondition
        > {}
