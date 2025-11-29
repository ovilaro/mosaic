// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_library_search_result.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibrarySearchResultDocSchema = Schema(
  name: r'OpenLibrarySearchResultDoc',
  id: 1146950428613288525,
  properties: {
    r'authorName': PropertySchema(
      id: 0,
      name: r'authorName',
      type: IsarType.stringList,
    ),
    r'editions': PropertySchema(
      id: 1,
      name: r'editions',
      type: IsarType.object,

      target: r'OpenLibraryEditions',
    ),
    r'firstPublishYear': PropertySchema(
      id: 2,
      name: r'firstPublishYear',
      type: IsarType.long,
    ),
    r'key': PropertySchema(id: 3, name: r'key', type: IsarType.string),
    r'numberOfPagesMedian': PropertySchema(
      id: 4,
      name: r'numberOfPagesMedian',
      type: IsarType.long,
    ),
    r'person': PropertySchema(
      id: 5,
      name: r'person',
      type: IsarType.stringList,
    ),
    r'place': PropertySchema(id: 6, name: r'place', type: IsarType.stringList),
    r'subject': PropertySchema(
      id: 7,
      name: r'subject',
      type: IsarType.stringList,
    ),
    r'title': PropertySchema(id: 8, name: r'title', type: IsarType.string),
  },

  estimateSize: _openLibrarySearchResultDocEstimateSize,
  serialize: _openLibrarySearchResultDocSerialize,
  deserialize: _openLibrarySearchResultDocDeserialize,
  deserializeProp: _openLibrarySearchResultDocDeserializeProp,
);

int _openLibrarySearchResultDocEstimateSize(
  OpenLibrarySearchResultDoc object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.authorName;
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
    final value = object.editions;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibraryEditionsSchema.estimateSize(
            value,
            allOffsets[OpenLibraryEditions]!,
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
    final list = object.person;
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
    final list = object.place;
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
    final list = object.subject;
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
  return bytesCount;
}

void _openLibrarySearchResultDocSerialize(
  OpenLibrarySearchResultDoc object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.authorName);
  writer.writeObject<OpenLibraryEditions>(
    offsets[1],
    allOffsets,
    OpenLibraryEditionsSchema.serialize,
    object.editions,
  );
  writer.writeLong(offsets[2], object.firstPublishYear);
  writer.writeString(offsets[3], object.key);
  writer.writeLong(offsets[4], object.numberOfPagesMedian);
  writer.writeStringList(offsets[5], object.person);
  writer.writeStringList(offsets[6], object.place);
  writer.writeStringList(offsets[7], object.subject);
  writer.writeString(offsets[8], object.title);
}

OpenLibrarySearchResultDoc _openLibrarySearchResultDocDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibrarySearchResultDoc(
    authorName: reader.readStringList(offsets[0]),
    editions: reader.readObjectOrNull<OpenLibraryEditions>(
      offsets[1],
      OpenLibraryEditionsSchema.deserialize,
      allOffsets,
    ),
    firstPublishYear: reader.readLongOrNull(offsets[2]),
    key: reader.readStringOrNull(offsets[3]),
    numberOfPagesMedian: reader.readLongOrNull(offsets[4]),
    person: reader.readStringList(offsets[5]),
    place: reader.readStringList(offsets[6]),
    subject: reader.readStringList(offsets[7]),
    title: reader.readStringOrNull(offsets[8]),
  );
  return object;
}

P _openLibrarySearchResultDocDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<OpenLibraryEditions>(
            offset,
            OpenLibraryEditionsSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringList(offset)) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readStringList(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibrarySearchResultDocQueryFilter
    on
        QueryBuilder<
          OpenLibrarySearchResultDoc,
          OpenLibrarySearchResultDoc,
          QFilterCondition
        > {
  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'authorName'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'authorName'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'authorName',
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'authorName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'authorName', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'authorName', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  authorNameLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'authorName',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  editionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'editions'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  editionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'editions'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  firstPublishYearIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'firstPublishYear'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  firstPublishYearIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'firstPublishYear'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  firstPublishYearEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'firstPublishYear', value: value),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  firstPublishYearGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'firstPublishYear',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  firstPublishYearLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'firstPublishYear',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  firstPublishYearBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'firstPublishYear',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  numberOfPagesMedianIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'numberOfPagesMedian'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  numberOfPagesMedianIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'numberOfPagesMedian'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  numberOfPagesMedianEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'numberOfPagesMedian', value: value),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  numberOfPagesMedianGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'numberOfPagesMedian',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  numberOfPagesMedianLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'numberOfPagesMedian',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  numberOfPagesMedianBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'numberOfPagesMedian',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'person'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'person'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'person',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'person',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'person',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'person',
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'person',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'person',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'person',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'person',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'person', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'person', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'person', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'person', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'person', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'person', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'person', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  personLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'person',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'place'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'place'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'place',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'place',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'place',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'place',
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'place',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'place',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'place',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'place',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'place', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'place', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'place', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'place', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'place', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'place', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'place', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  placeLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'place',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'subject'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'subject'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'subject',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'subject',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'subject',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'subject',
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
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'subject',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'subject',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'subject',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'subject',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subject', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subject', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subject', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subject', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subject', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subject', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'subject', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  subjectLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'subject',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'title'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'title'),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }
}

extension OpenLibrarySearchResultDocQueryObject
    on
        QueryBuilder<
          OpenLibrarySearchResultDoc,
          OpenLibrarySearchResultDoc,
          QFilterCondition
        > {
  QueryBuilder<
    OpenLibrarySearchResultDoc,
    OpenLibrarySearchResultDoc,
    QAfterFilterCondition
  >
  editions(FilterQuery<OpenLibraryEditions> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'editions');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryEditionsSchema = Schema(
  name: r'OpenLibraryEditions',
  id: 5543564045037181293,
  properties: {
    r'docs': PropertySchema(
      id: 0,
      name: r'docs',
      type: IsarType.objectList,

      target: r'OpenLibraryEditionsDoc',
    ),
    r'numFound': PropertySchema(id: 1, name: r'numFound', type: IsarType.long),
    r'numFoundExact': PropertySchema(
      id: 2,
      name: r'numFoundExact',
      type: IsarType.bool,
    ),
    r'start': PropertySchema(id: 3, name: r'start', type: IsarType.long),
  },

  estimateSize: _openLibraryEditionsEstimateSize,
  serialize: _openLibraryEditionsSerialize,
  deserialize: _openLibraryEditionsDeserialize,
  deserializeProp: _openLibraryEditionsDeserializeProp,
);

int _openLibraryEditionsEstimateSize(
  OpenLibraryEditions object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.docs;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[OpenLibraryEditionsDoc]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += OpenLibraryEditionsDocSchema.estimateSize(
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

void _openLibraryEditionsSerialize(
  OpenLibraryEditions object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<OpenLibraryEditionsDoc>(
    offsets[0],
    allOffsets,
    OpenLibraryEditionsDocSchema.serialize,
    object.docs,
  );
  writer.writeLong(offsets[1], object.numFound);
  writer.writeBool(offsets[2], object.numFoundExact);
  writer.writeLong(offsets[3], object.start);
}

OpenLibraryEditions _openLibraryEditionsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryEditions(
    docs: reader.readObjectList<OpenLibraryEditionsDoc>(
      offsets[0],
      OpenLibraryEditionsDocSchema.deserialize,
      allOffsets,
      OpenLibraryEditionsDoc(),
    ),
    numFound: reader.readLongOrNull(offsets[1]),
    numFoundExact: reader.readBoolOrNull(offsets[2]),
    start: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _openLibraryEditionsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<OpenLibraryEditionsDoc>(
            offset,
            OpenLibraryEditionsDocSchema.deserialize,
            allOffsets,
            OpenLibraryEditionsDoc(),
          ))
          as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryEditionsQueryFilter
    on
        QueryBuilder<
          OpenLibraryEditions,
          OpenLibraryEditions,
          QFilterCondition
        > {
  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'docs'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'docs'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'docs', length, true, length, true);
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'docs', 0, true, 0, true);
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'docs', 0, false, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'docs', 0, true, length, include);
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'docs', length, include, 999999, true);
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'docs',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'numFound'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'numFound'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'numFound', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'numFound',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'numFound',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'numFound',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundExactIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'numFoundExact'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundExactIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'numFoundExact'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  numFoundExactEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'numFoundExact', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  startIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'start'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  startIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'start'),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  startEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'start', value: value),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  startGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'start',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  startLessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'start',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  startBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'start',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension OpenLibraryEditionsQueryObject
    on
        QueryBuilder<
          OpenLibraryEditions,
          OpenLibraryEditions,
          QFilterCondition
        > {
  QueryBuilder<OpenLibraryEditions, OpenLibraryEditions, QAfterFilterCondition>
  docsElement(FilterQuery<OpenLibraryEditionsDoc> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'docs');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const OpenLibraryEditionsDocSchema = Schema(
  name: r'OpenLibraryEditionsDoc',
  id: -808946179426519464,
  properties: {
    r'authorName': PropertySchema(
      id: 0,
      name: r'authorName',
      type: IsarType.stringList,
    ),
    r'coverI': PropertySchema(id: 1, name: r'coverI', type: IsarType.long),
    r'format': PropertySchema(
      id: 2,
      name: r'format',
      type: IsarType.stringList,
    ),
    r'isbn': PropertySchema(id: 3, name: r'isbn', type: IsarType.stringList),
    r'key': PropertySchema(id: 4, name: r'key', type: IsarType.string),
    r'language': PropertySchema(
      id: 5,
      name: r'language',
      type: IsarType.stringList,
    ),
    r'publishDate': PropertySchema(
      id: 6,
      name: r'publishDate',
      type: IsarType.stringList,
    ),
    r'publisher': PropertySchema(
      id: 7,
      name: r'publisher',
      type: IsarType.stringList,
    ),
    r'subtitle': PropertySchema(
      id: 8,
      name: r'subtitle',
      type: IsarType.string,
    ),
    r'title': PropertySchema(id: 9, name: r'title', type: IsarType.string),
  },

  estimateSize: _openLibraryEditionsDocEstimateSize,
  serialize: _openLibraryEditionsDocSerialize,
  deserialize: _openLibraryEditionsDocDeserialize,
  deserializeProp: _openLibraryEditionsDocDeserializeProp,
);

int _openLibraryEditionsDocEstimateSize(
  OpenLibraryEditionsDoc object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.authorName;
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
    final list = object.format;
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
    final list = object.isbn;
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
    final list = object.language;
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
    final list = object.publishDate;
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
    final list = object.publisher;
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
  return bytesCount;
}

void _openLibraryEditionsDocSerialize(
  OpenLibraryEditionsDoc object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.authorName);
  writer.writeLong(offsets[1], object.coverI);
  writer.writeStringList(offsets[2], object.format);
  writer.writeStringList(offsets[3], object.isbn);
  writer.writeString(offsets[4], object.key);
  writer.writeStringList(offsets[5], object.language);
  writer.writeStringList(offsets[6], object.publishDate);
  writer.writeStringList(offsets[7], object.publisher);
  writer.writeString(offsets[8], object.subtitle);
  writer.writeString(offsets[9], object.title);
}

OpenLibraryEditionsDoc _openLibraryEditionsDocDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OpenLibraryEditionsDoc(
    authorName: reader.readStringList(offsets[0]),
    coverI: reader.readLongOrNull(offsets[1]),
    format: reader.readStringList(offsets[2]),
    isbn: reader.readStringList(offsets[3]),
    key: reader.readStringOrNull(offsets[4]),
    language: reader.readStringList(offsets[5]),
    publishDate: reader.readStringList(offsets[6]),
    publisher: reader.readStringList(offsets[7]),
    subtitle: reader.readStringOrNull(offsets[8]),
    title: reader.readStringOrNull(offsets[9]),
  );
  return object;
}

P _openLibraryEditionsDocDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringList(offset)) as P;
    case 6:
      return (reader.readStringList(offset)) as P;
    case 7:
      return (reader.readStringList(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension OpenLibraryEditionsDocQueryFilter
    on
        QueryBuilder<
          OpenLibraryEditionsDoc,
          OpenLibraryEditionsDoc,
          QFilterCondition
        > {
  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'authorName'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'authorName'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'authorName',
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'authorName',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'authorName',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'authorName', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'authorName', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'authorName', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  authorNameLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'authorName',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  coverIIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'coverI'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  coverIIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'coverI'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  coverIEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'coverI', value: value),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  coverIGreaterThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'coverI',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  coverILessThan(int? value, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'coverI',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  coverIBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'coverI',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'format'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'format'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'format',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'format',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'format',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'format',
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'format',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'format',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'format',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'format',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'format', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'format', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'format', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'format', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'format', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'format', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'format', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  formatLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'format',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'isbn'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'isbn'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'isbn',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'isbn',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'isbn',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'isbn',
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'isbn',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'isbn',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'isbn',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'isbn',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'isbn', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'isbn', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'isbn', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  isbnLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'isbn',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'key', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'language'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'language'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'language',
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'language',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'language',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'language', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'language', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'language', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'language', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'language', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'language', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  languageLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'language',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'publishDate'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'publishDate'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementEqualTo(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementGreaterThan(
    String value, {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementLessThan(
    String value, {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementBetween(
    String lower,
    String upper, {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementStartsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementEndsWith(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'publishDate', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'publishDate', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishDate', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishDate', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishDate', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishDate', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publishDate', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publishDateLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'publishDate',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'publisher'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'publisher'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementEqualTo(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'publisher',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'publisher',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'publisher',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'publisher',
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
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementStartsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'publisher',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementEndsWith(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'publisher',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'publisher',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'publisher',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'publisher', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'publisher', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publisher', length, true, length, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publisher', 0, true, 0, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publisher', 0, false, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherLengthLessThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publisher', 0, true, length, include);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherLengthGreaterThan(int length, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(r'publisher', length, include, 999999, true);
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  publisherLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'publisher',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  subtitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'subtitle'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  subtitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'subtitle'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  subtitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'subtitle', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  subtitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'subtitle', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'title'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'title'),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
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

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'title', value: ''),
      );
    });
  }

  QueryBuilder<
    OpenLibraryEditionsDoc,
    OpenLibraryEditionsDoc,
    QAfterFilterCondition
  >
  titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'title', value: ''),
      );
    });
  }
}

extension OpenLibraryEditionsDocQueryObject
    on
        QueryBuilder<
          OpenLibraryEditionsDoc,
          OpenLibraryEditionsDoc,
          QFilterCondition
        > {}
