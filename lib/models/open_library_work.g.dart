// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_library_work.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryWorkSchema = Schema(
  name: r'OpenLibraryWork',
  id: -6186027663788432740,
  properties: {
    r'authors': PropertySchema(
      id: 0,
      name: r'authors',
      type: IsarType.objectList,

      target: r'OpenLibraryAuthor',
    ),
    r'covers': PropertySchema(id: 1, name: r'covers', type: IsarType.longList),
    r'created': PropertySchema(
      id: 2,
      name: r'created',
      type: IsarType.object,

      target: r'OpenLibraryCreated',
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'deweyNumber': PropertySchema(
      id: 4,
      name: r'deweyNumber',
      type: IsarType.stringList,
    ),
    r'excerpts': PropertySchema(
      id: 5,
      name: r'excerpts',
      type: IsarType.objectList,

      target: r'OpenLibraryExcerpt',
    ),
    r'firstPublishDate': PropertySchema(
      id: 6,
      name: r'firstPublishDate',
      type: IsarType.string,
    ),
    r'firstSentence': PropertySchema(
      id: 7,
      name: r'firstSentence',
      type: IsarType.object,

      target: r'OpenLibraryCreated',
    ),
    r'identifiers': PropertySchema(
      id: 8,
      name: r'identifiers',
      type: IsarType.object,

      target: r'OpenLibraryIdentifiers',
    ),
    r'key': PropertySchema(id: 9, name: r'key', type: IsarType.string),
    r'lastModified': PropertySchema(
      id: 10,
      name: r'lastModified',
      type: IsarType.object,

      target: r'OpenLibraryCreated',
    ),
    r'latestRevision': PropertySchema(
      id: 11,
      name: r'latestRevision',
      type: IsarType.long,
    ),
    r'links': PropertySchema(
      id: 12,
      name: r'links',
      type: IsarType.objectList,

      target: r'OpenLibraryLink',
    ),
    r'revision': PropertySchema(id: 13, name: r'revision', type: IsarType.long),
    r'subjectPeople': PropertySchema(
      id: 14,
      name: r'subjectPeople',
      type: IsarType.stringList,
    ),
    r'subjectPlaces': PropertySchema(
      id: 15,
      name: r'subjectPlaces',
      type: IsarType.stringList,
    ),
    r'subjects': PropertySchema(
      id: 16,
      name: r'subjects',
      type: IsarType.stringList,
    ),
    r'title': PropertySchema(id: 17, name: r'title', type: IsarType.string),
    r'type': PropertySchema(
      id: 18,
      name: r'type',
      type: IsarType.object,

      target: r'OpenLibraryType',
    ),
  },

  estimateSize: _openLibraryWorkEstimateSize,
  serialize: _openLibraryWorkSerialize,
  deserialize: _openLibraryWorkDeserialize,
  deserializeProp: _openLibraryWorkDeserializeProp,
);

int _openLibraryWorkEstimateSize(
  OpenLibraryWork object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.authors;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryAuthor]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryAuthorSchema.estimateSize(
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
          OpenLibraryCreatedSchema.estimateSize(
            value,
            allOffsets[OpenLibraryCreated]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.deweyNumber;
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
    final list = object.excerpts;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryExcerpt]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryExcerptSchema.estimateSize(
            value,
            offsets,
            allOffsets,
          );
        }
      }
    }
  }
  {
    final value = object.firstPublishDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.firstSentence;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryCreatedSchema.estimateSize(
            value,
            allOffsets[OpenLibraryCreated]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.identifiers;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryIdentifiersSchema.estimateSize(
            value,
            allOffsets[OpenLibraryIdentifiers]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.key;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastModified;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryCreatedSchema.estimateSize(
            value,
            allOffsets[OpenLibraryCreated]!,
            allOffsets,
          );
    }
  }
  {
    final list = object.links;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryLink]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryLinkSchema.estimateSize(
            value,
            offsets,
            allOffsets,
          );
        }
      }
    }
  }
  {
    final list = object.subjectPeople;
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
    final list = object.subjectPlaces;
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
    final list = object.subjects;
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
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryTypeSchema.estimateSize(
            value,
            allOffsets[OpenLibraryType]!,
            allOffsets,
          );
    }
  }
  return bytesCount;
}

void _openLibraryWorkSerialize(
  OpenLibraryWork object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<OpenLibraryAuthor>(
    offsets[0],
    allOffsets,
    OpenLibraryAuthorSchema.serialize,
    object.authors,
  );
  writer.writeLongList(offsets[1], object.covers);
  writer.writeObject<OpenLibraryCreated>(
    offsets[2],
    allOffsets,
    OpenLibraryCreatedSchema.serialize,
    object.created,
  );
  writer.writeString(offsets[3], object.description);
  writer.writeStringList(offsets[4], object.deweyNumber);
  writer.writeObjectList<OpenLibraryExcerpt>(
    offsets[5],
    allOffsets,
    OpenLibraryExcerptSchema.serialize,
    object.excerpts,
  );
  writer.writeString(offsets[6], object.firstPublishDate);
  writer.writeObject<OpenLibraryCreated>(
    offsets[7],
    allOffsets,
    OpenLibraryCreatedSchema.serialize,
    object.firstSentence,
  );
  writer.writeObject<OpenLibraryIdentifiers>(
    offsets[8],
    allOffsets,
    OpenLibraryIdentifiersSchema.serialize,
    object.identifiers,
  );
  writer.writeString(offsets[9], object.key);
  writer.writeObject<OpenLibraryCreated>(
    offsets[10],
    allOffsets,
    OpenLibraryCreatedSchema.serialize,
    object.lastModified,
  );
  writer.writeLong(offsets[11], object.latestRevision);
  writer.writeObjectList<OpenLibraryLink>(
    offsets[12],
    allOffsets,
    OpenLibraryLinkSchema.serialize,
    object.links,
  );
  writer.writeLong(offsets[13], object.revision);
  writer.writeStringList(offsets[14], object.subjectPeople);
  writer.writeStringList(offsets[15], object.subjectPlaces);
  writer.writeStringList(offsets[16], object.subjects);
  writer.writeString(offsets[17], object.title);
  writer.writeObject<OpenLibraryType>(
    offsets[18],
    allOffsets,
    OpenLibraryTypeSchema.serialize,
    object.type,
  );
}

OpenLibraryWork _openLibraryWorkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryWork(
    authors: reader.readObjectList<OpenLibraryAuthor>(
      offsets[0],
      OpenLibraryAuthorSchema.deserialize,
      allOffsets,
      OpenLibraryAuthor(),
    ),
    covers: reader.readLongList(offsets[1]),
    created: reader.readObjectOrNull<OpenLibraryCreated>(
      offsets[2],
      OpenLibraryCreatedSchema.deserialize,
      allOffsets,
    ),
    description: reader.readStringOrNull(offsets[3]),
    deweyNumber: reader.readStringList(offsets[4]),
    excerpts: reader.readObjectList<OpenLibraryExcerpt>(
      offsets[5],
      OpenLibraryExcerptSchema.deserialize,
      allOffsets,
      OpenLibraryExcerpt(),
    ),
    firstPublishDate: reader.readStringOrNull(offsets[6]),
    firstSentence: reader.readObjectOrNull<OpenLibraryCreated>(
      offsets[7],
      OpenLibraryCreatedSchema.deserialize,
      allOffsets,
    ),
    identifiers: reader.readObjectOrNull<OpenLibraryIdentifiers>(
      offsets[8],
      OpenLibraryIdentifiersSchema.deserialize,
      allOffsets,
    ),
    key: reader.readStringOrNull(offsets[9]),
    lastModified: reader.readObjectOrNull<OpenLibraryCreated>(
      offsets[10],
      OpenLibraryCreatedSchema.deserialize,
      allOffsets,
    ),
    latestRevision: reader.readLongOrNull(offsets[11]),
    links: reader.readObjectList<OpenLibraryLink>(
      offsets[12],
      OpenLibraryLinkSchema.deserialize,
      allOffsets,
      OpenLibraryLink(),
    ),
    revision: reader.readLongOrNull(offsets[13]),
    subjectPeople: reader.readStringList(offsets[14]),
    subjectPlaces: reader.readStringList(offsets[15]),
    subjects: reader.readStringList(offsets[16]),
    title: reader.readStringOrNull(offsets[17]),
    type: reader.readObjectOrNull<OpenLibraryType>(
      offsets[18],
      OpenLibraryTypeSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _openLibraryWorkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<OpenLibraryAuthor>(
            offset,
            OpenLibraryAuthorSchema.deserialize,
            allOffsets,
            OpenLibraryAuthor(),
          ))
          as P;
    case 1:
      return (reader.readLongList(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<OpenLibraryCreated>(
            offset,
            OpenLibraryCreatedSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringList(offset)) as P;
    case 5:
      return (reader.readObjectList<OpenLibraryExcerpt>(
            offset,
            OpenLibraryExcerptSchema.deserialize,
            allOffsets,
            OpenLibraryExcerpt(),
          ))
          as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readObjectOrNull<OpenLibraryCreated>(
            offset,
            OpenLibraryCreatedSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 8:
      return (reader.readObjectOrNull<OpenLibraryIdentifiers>(
            offset,
            OpenLibraryIdentifiersSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readObjectOrNull<OpenLibraryCreated>(
            offset,
            OpenLibraryCreatedSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readObjectList<OpenLibraryLink>(
            offset,
            OpenLibraryLinkSchema.deserialize,
            allOffsets,
            OpenLibraryLink(),
          ))
          as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readStringList(offset)) as P;
    case 15:
      return (reader.readStringList(offset)) as P;
    case 16:
      return (reader.readStringList(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readObjectOrNull<OpenLibraryType>(
            offset,
            OpenLibraryTypeSchema.deserialize,
            allOffsets,
          ))
          as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryWorkQueryFilter
    on QueryBuilder<OpenLibraryWork, OpenLibraryWork, QFilterCondition> {
  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'authors'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'authors'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authors', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'covers'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'covers'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'covers', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  coversLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'covers', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  createdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'created'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  createdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'created'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'description'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'description'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'description',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'description',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'description',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'description', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'deweyNumber'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'deweyNumber'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'deweyNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'deweyNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'deweyNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'deweyNumber',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'deweyNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'deweyNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'deweyNumber',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'deweyNumber',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'deweyNumber', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'deweyNumber', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'deweyNumber', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'deweyNumber', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'deweyNumber', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'deweyNumber', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'deweyNumber', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  deweyNumberLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deweyNumber',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'excerpts'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'excerpts'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'excerpts', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'excerpts', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'excerpts', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'excerpts', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'excerpts', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'excerpts',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'firstPublishDate'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'firstPublishDate'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'firstPublishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'firstPublishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'firstPublishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'firstPublishDate',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'firstPublishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'firstPublishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'firstPublishDate',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'firstPublishDate',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'firstPublishDate', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstPublishDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'firstPublishDate', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstSentenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'firstSentence'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstSentenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'firstSentence'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  identifiersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'identifiers'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  identifiersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'identifiers'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'key'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'key'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  lastModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'lastModified'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  lastModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'lastModified'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  latestRevisionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'latestRevision'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  latestRevisionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'latestRevision'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  latestRevisionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'latestRevision', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'links'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'links'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'links', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'links', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'links', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'links', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'links', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'links',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  revisionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'revision'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  revisionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'revision'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  revisionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'revision', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'subjectPeople'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'subjectPeople'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subjectPeople',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subjectPeople',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subjectPeople',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subjectPeople',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subjectPeople',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subjectPeople',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subjectPeople',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subjectPeople',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subjectPeople', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subjectPeople', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPeople', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPeople', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPeople', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPeople', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPeople', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPeopleLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjectPeople',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'subjectPlaces'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'subjectPlaces'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subjectPlaces',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subjectPlaces',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subjectPlaces',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subjectPlaces',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subjectPlaces',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subjectPlaces',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subjectPlaces',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subjectPlaces',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subjectPlaces', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subjectPlaces', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPlaces', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPlaces', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPlaces', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPlaces', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjectPlaces', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectPlacesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjectPlaces',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'subjects'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'subjects'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subjects',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subjects',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subjects',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subjects',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subjects',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subjects',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subjects',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subjects',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subjects', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subjects', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjects', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjects', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjects', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjects', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subjects', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  subjectsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subjects',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'title'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'title'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'type'),
      );
    });
  }
}

extension OpenLibraryWorkQueryObject
    on QueryBuilder<OpenLibraryWork, OpenLibraryWork, QFilterCondition> {
  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  authorsElement(FilterQuery<OpenLibraryAuthor> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'authors');
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition> created(
    FilterQuery<OpenLibraryCreated> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'created');
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  excerptsElement(FilterQuery<OpenLibraryExcerpt> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'excerpts');
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  firstSentence(FilterQuery<OpenLibraryCreated> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'firstSentence');
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  identifiers(FilterQuery<OpenLibraryIdentifiers> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'identifiers');
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  lastModified(FilterQuery<OpenLibraryCreated> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'lastModified');
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition>
  linksElement(FilterQuery<OpenLibraryLink> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'links');
    });
  }

  QueryBuilder<OpenLibraryWork, OpenLibraryWork, QAfterFilterCondition> type(
    FilterQuery<OpenLibraryType> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'type');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryAuthorSchema = Schema(
  name: r'OpenLibraryAuthor',
  id: -5496827539284312225,
  properties: {
    r'author': PropertySchema(
      id: 0,
      name: r'author',
      type: IsarType.object,

      target: r'OpenLibraryType',
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.object,

      target: r'OpenLibraryType',
    ),
  },

  estimateSize: _openLibraryAuthorEstimateSize,
  serialize: _openLibraryAuthorSerialize,
  deserialize: _openLibraryAuthorDeserialize,
  deserializeProp: _openLibraryAuthorDeserializeProp,
);

int _openLibraryAuthorEstimateSize(
  OpenLibraryAuthor object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.author;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryTypeSchema.estimateSize(
            value,
            allOffsets[OpenLibraryType]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryTypeSchema.estimateSize(
            value,
            allOffsets[OpenLibraryType]!,
            allOffsets,
          );
    }
  }
  return bytesCount;
}

void _openLibraryAuthorSerialize(
  OpenLibraryAuthor object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OpenLibraryType>(
    offsets[0],
    allOffsets,
    OpenLibraryTypeSchema.serialize,
    object.author,
  );
  writer.writeObject<OpenLibraryType>(
    offsets[1],
    allOffsets,
    OpenLibraryTypeSchema.serialize,
    object.type,
  );
}

OpenLibraryAuthor _openLibraryAuthorDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryAuthor(
    author: reader.readObjectOrNull<OpenLibraryType>(
      offsets[0],
      OpenLibraryTypeSchema.deserialize,
      allOffsets,
    ),
    type: reader.readObjectOrNull<OpenLibraryType>(
      offsets[1],
      OpenLibraryTypeSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _openLibraryAuthorDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OpenLibraryType>(
            offset,
            OpenLibraryTypeSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 1:
      return (reader.readObjectOrNull<OpenLibraryType>(
            offset,
            OpenLibraryTypeSchema.deserialize,
            allOffsets,
          ))
          as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryAuthorQueryFilter
    on QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QFilterCondition> {
  QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QAfterFilterCondition>
  authorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'author'),
      );
    });
  }

  QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QAfterFilterCondition>
  authorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'author'),
      );
    });
  }

  QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QAfterFilterCondition>
  typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QAfterFilterCondition>
  typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'type'),
      );
    });
  }
}

extension OpenLibraryAuthorQueryObject
    on QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QFilterCondition> {
  QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QAfterFilterCondition>
  author(FilterQuery<OpenLibraryType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'author');
    });
  }

  QueryBuilder<OpenLibraryAuthor, OpenLibraryAuthor, QAfterFilterCondition>
  type(FilterQuery<OpenLibraryType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'type');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryTypeSchema = Schema(
  name: r'OpenLibraryType',
  id: -3158301502542746689,
  properties: {
    r'key': PropertySchema(id: 0, name: r'key', type: IsarType.string),
  },

  estimateSize: _openLibraryTypeEstimateSize,
  serialize: _openLibraryTypeSerialize,
  deserialize: _openLibraryTypeDeserialize,
  deserializeProp: _openLibraryTypeDeserializeProp,
);

int _openLibraryTypeEstimateSize(
  OpenLibraryType object,
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

void _openLibraryTypeSerialize(
  OpenLibraryType object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.key);
}

OpenLibraryType _openLibraryTypeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryType(key: reader.readStringOrNull(offsets[0]));
  return object;
}

P _openLibraryTypeDeserializeProp<P>(
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

extension OpenLibraryTypeQueryFilter
    on QueryBuilder<OpenLibraryType, OpenLibraryType, QFilterCondition> {
  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
  keyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'key'),
      );
    });
  }

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
  keyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'key'),
      );
    });
  }

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
  keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryType, OpenLibraryType, QAfterFilterCondition>
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }
}

extension OpenLibraryTypeQueryObject
    on QueryBuilder<OpenLibraryType, OpenLibraryType, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryCreatedSchema = Schema(
  name: r'OpenLibraryCreated',
  id: 1328010089338775319,
  properties: {
    r'type': PropertySchema(id: 0, name: r'type', type: IsarType.string),
    r'value': PropertySchema(id: 1, name: r'value', type: IsarType.string),
  },

  estimateSize: _openLibraryCreatedEstimateSize,
  serialize: _openLibraryCreatedSerialize,
  deserialize: _openLibraryCreatedDeserialize,
  deserializeProp: _openLibraryCreatedDeserializeProp,
);

int _openLibraryCreatedEstimateSize(
  OpenLibraryCreated object,
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
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _openLibraryCreatedSerialize(
  OpenLibraryCreated object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.type);
  writer.writeString(offsets[1], object.value);
}

OpenLibraryCreated _openLibraryCreatedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryCreated(
    type: reader.readStringOrNull(offsets[0]),
    value: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _openLibraryCreatedDeserializeProp<P>(
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

extension OpenLibraryCreatedQueryFilter
    on QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QFilterCondition> {
  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'type', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'type', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'value'),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'value'),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'value',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'value',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'value',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'value', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QAfterFilterCondition>
  valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'value', value: ''),
      );
    });
  }
}

extension OpenLibraryCreatedQueryObject
    on QueryBuilder<OpenLibraryCreated, OpenLibraryCreated, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryExcerptSchema = Schema(
  name: r'OpenLibraryExcerpt',
  id: 154518475270449998,
  properties: {
    r'author': PropertySchema(
      id: 0,
      name: r'author',
      type: IsarType.object,

      target: r'OpenLibraryType',
    ),
    r'comment': PropertySchema(id: 1, name: r'comment', type: IsarType.string),
    r'excerpt': PropertySchema(id: 2, name: r'excerpt', type: IsarType.string),
    r'pages': PropertySchema(id: 3, name: r'pages', type: IsarType.string),
  },

  estimateSize: _openLibraryExcerptEstimateSize,
  serialize: _openLibraryExcerptSerialize,
  deserialize: _openLibraryExcerptDeserialize,
  deserializeProp: _openLibraryExcerptDeserializeProp,
);

int _openLibraryExcerptEstimateSize(
  OpenLibraryExcerpt object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.author;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryTypeSchema.estimateSize(
            value,
            allOffsets[OpenLibraryType]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.excerpt;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pages;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _openLibraryExcerptSerialize(
  OpenLibraryExcerpt object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<OpenLibraryType>(
    offsets[0],
    allOffsets,
    OpenLibraryTypeSchema.serialize,
    object.author,
  );
  writer.writeString(offsets[1], object.comment);
  writer.writeString(offsets[2], object.excerpt);
  writer.writeString(offsets[3], object.pages);
}

OpenLibraryExcerpt _openLibraryExcerptDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryExcerpt(
    author: reader.readObjectOrNull<OpenLibraryType>(
      offsets[0],
      OpenLibraryTypeSchema.deserialize,
      allOffsets,
    ),
    comment: reader.readStringOrNull(offsets[1]),
    excerpt: reader.readStringOrNull(offsets[2]),
    pages: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _openLibraryExcerptDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<OpenLibraryType>(
            offset,
            OpenLibraryTypeSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryExcerptQueryFilter
    on QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QFilterCondition> {
  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  authorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'author'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  authorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'author'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'comment'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'comment'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'comment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'comment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'comment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'comment',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'comment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'comment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'comment',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'comment',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'comment', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'comment', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'excerpt'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'excerpt'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'excerpt',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'excerpt',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'excerpt',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'excerpt',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'excerpt',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'excerpt',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'excerpt',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'excerpt',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'excerpt', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  excerptIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'excerpt', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'pages'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'pages'),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'pages',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'pages',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'pages',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'pages',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'pages',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'pages',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'pages',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'pages',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'pages', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  pagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'pages', value: ''),
      );
    });
  }
}

extension OpenLibraryExcerptQueryObject
    on QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QFilterCondition> {
  QueryBuilder<OpenLibraryExcerpt, OpenLibraryExcerpt, QAfterFilterCondition>
  author(FilterQuery<OpenLibraryType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'author');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryIdentifiersSchema = Schema(
  name: r'OpenLibraryIdentifiers',
  id: 8413348798488702958,
  properties: {
    r'bookbrainz': PropertySchema(
      id: 0,
      name: r'bookbrainz',
      type: IsarType.stringList,
    ),
    r'musicbrainz': PropertySchema(
      id: 1,
      name: r'musicbrainz',
      type: IsarType.stringList,
    ),
    r'wikidata': PropertySchema(
      id: 2,
      name: r'wikidata',
      type: IsarType.stringList,
    ),
  },

  estimateSize: _openLibraryIdentifiersEstimateSize,
  serialize: _openLibraryIdentifiersSerialize,
  deserialize: _openLibraryIdentifiersDeserialize,
  deserializeProp: _openLibraryIdentifiersDeserializeProp,
);

int _openLibraryIdentifiersEstimateSize(
  OpenLibraryIdentifiers object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.bookbrainz;
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
    final list = object.musicbrainz;
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
    final list = object.wikidata;
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
  return bytesCount;
}

void _openLibraryIdentifiersSerialize(
  OpenLibraryIdentifiers object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.bookbrainz);
  writer.writeStringList(offsets[1], object.musicbrainz);
  writer.writeStringList(offsets[2], object.wikidata);
}

OpenLibraryIdentifiers _openLibraryIdentifiersDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryIdentifiers(
    bookbrainz: reader.readStringList(offsets[0]),
    musicbrainz: reader.readStringList(offsets[1]),
    wikidata: reader.readStringList(offsets[2]),
  );
  return object;
}

P _openLibraryIdentifiersDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryIdentifiersQueryFilter
    on
        QueryBuilder<
          OpenLibraryIdentifiers,
          OpenLibraryIdentifiers,
          QFilterCondition
        > {
  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'bookbrainz'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'bookbrainz'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'bookbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'bookbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'bookbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'bookbrainz',
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
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'bookbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'bookbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'bookbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'bookbrainz',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'bookbrainz', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'bookbrainz', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'bookbrainz', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'bookbrainz', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'bookbrainz', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'bookbrainz', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'bookbrainz', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  bookbrainzLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bookbrainz',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'musicbrainz'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'musicbrainz'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'musicbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'musicbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'musicbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'musicbrainz',
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
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'musicbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'musicbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'musicbrainz',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'musicbrainz',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'musicbrainz', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'musicbrainz', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'musicbrainz', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'musicbrainz', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'musicbrainz', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'musicbrainz', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'musicbrainz', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  musicbrainzLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'musicbrainz',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'wikidata'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'wikidata'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'wikidata',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'wikidata',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'wikidata',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'wikidata',
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
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'wikidata',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'wikidata',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'wikidata',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'wikidata',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'wikidata', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'wikidata', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'wikidata', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'wikidata', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'wikidata', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'wikidata', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'wikidata', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryIdentifiers,
    OpenLibraryIdentifiers,
    QAfterFilterCondition
  >
  wikidataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'wikidata',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension OpenLibraryIdentifiersQueryObject
    on
        QueryBuilder<
          OpenLibraryIdentifiers,
          OpenLibraryIdentifiers,
          QFilterCondition
        > {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryLinkSchema = Schema(
  name: r'OpenLibraryLink',
  id: -7283110584304924316,
  properties: {
    r'title': PropertySchema(id: 0, name: r'title', type: IsarType.string),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.object,

      target: r'OpenLibraryType',
    ),
    r'url': PropertySchema(id: 2, name: r'url', type: IsarType.string),
  },

  estimateSize: _openLibraryLinkEstimateSize,
  serialize: _openLibraryLinkSerialize,
  deserialize: _openLibraryLinkDeserialize,
  deserializeProp: _openLibraryLinkDeserializeProp,
);

int _openLibraryLinkEstimateSize(
  OpenLibraryLink object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryTypeSchema.estimateSize(
            value,
            allOffsets[OpenLibraryType]!,
            allOffsets,
          );
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _openLibraryLinkSerialize(
  OpenLibraryLink object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.title);
  writer.writeObject<OpenLibraryType>(
    offsets[1],
    allOffsets,
    OpenLibraryTypeSchema.serialize,
    object.type,
  );
  writer.writeString(offsets[2], object.url);
}

OpenLibraryLink _openLibraryLinkDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryLink(
    title: reader.readStringOrNull(offsets[0]),
    type: reader.readObjectOrNull<OpenLibraryType>(
      offsets[1],
      OpenLibraryTypeSchema.deserialize,
      allOffsets,
    ),
    url: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _openLibraryLinkDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<OpenLibraryType>(
            offset,
            OpenLibraryTypeSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryLinkQueryFilter
    on QueryBuilder<OpenLibraryLink, OpenLibraryLink, QFilterCondition> {
  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'title'),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'title'),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
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

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'type'),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'url'),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'url'),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlEqualTo(String? value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'url',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'url',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'url',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'url', value: ''),
      );
    });
  }

  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition>
  urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'url', value: ''),
      );
    });
  }
}

extension OpenLibraryLinkQueryObject
    on QueryBuilder<OpenLibraryLink, OpenLibraryLink, QFilterCondition> {
  QueryBuilder<OpenLibraryLink, OpenLibraryLink, QAfterFilterCondition> type(
    FilterQuery<OpenLibraryType> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'type');
    });
  }
}
