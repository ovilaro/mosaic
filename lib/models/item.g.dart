// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetItemCollection on Isar {
  IsarCollection<Item> get items => this.collection();
}

const ItemSchema = CollectionSchema(
  name: r'Item',
  id: 7900997316587104717,
  properties: {
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.long),
    r'igdbGame': PropertySchema(
      id: 1,
      name: r'igdbGame',
      type: IsarType.object,

      target: r'IgdbGame',
    ),
    r'itemType': PropertySchema(
      id: 2,
      name: r'itemType',
      type: IsarType.byte,
      enumMap: _ItemitemTypeEnumValueMap,
    ),
    r'name': PropertySchema(id: 3, name: r'name', type: IsarType.string),
    r'shortDesc': PropertySchema(
      id: 4,
      name: r'shortDesc',
      type: IsarType.string,
    ),
    r'thumb': PropertySchema(id: 5, name: r'thumb', type: IsarType.string),
  },

  estimateSize: _itemEstimateSize,
  serialize: _itemSerialize,
  deserialize: _itemDeserialize,
  deserializeProp: _itemDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'IgdbGame': IgdbGameSchema,
    r'IgdbCover': IgdbCoverSchema,
    r'IgdbGameInfo': IgdbGameInfoSchema,
    r'GameType': GameTypeSchema,
  },

  getId: _itemGetId,
  getLinks: _itemGetLinks,
  attach: _itemAttach,
  version: '3.3.0',
);

int _itemEstimateSize(
  Item object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.igdbGame;
    if (value != null) {
      bytesCount +=
          3 +
          IgdbGameSchema.estimateSize(value, allOffsets[IgdbGame]!, allOffsets);
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.shortDesc.length * 3;
  bytesCount += 3 + object.thumb.length * 3;
  return bytesCount;
}

void _itemSerialize(
  Item object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.apiId);
  writer.writeObject<IgdbGame>(
    offsets[1],
    allOffsets,
    IgdbGameSchema.serialize,
    object.igdbGame,
  );
  writer.writeByte(offsets[2], object.itemType.index);
  writer.writeString(offsets[3], object.name);
  writer.writeString(offsets[4], object.shortDesc);
  writer.writeString(offsets[5], object.thumb);
}

Item _itemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Item();
  object.apiId = reader.readLong(offsets[0]);
  object.id = id;
  object.igdbGame = reader.readObjectOrNull<IgdbGame>(
    offsets[1],
    IgdbGameSchema.deserialize,
    allOffsets,
  );
  object.itemType =
      _ItemitemTypeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
      ItemType.igdbGame;
  return object;
}

P _itemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<IgdbGame>(
            offset,
            IgdbGameSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 2:
      return (_ItemitemTypeValueEnumMap[reader.readByteOrNull(offset)] ??
              ItemType.igdbGame)
          as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ItemitemTypeEnumValueMap = {'igdbGame': 0};
const _ItemitemTypeValueEnumMap = {0: ItemType.igdbGame};

Id _itemGetId(Item object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _itemGetLinks(Item object) {
  return [];
}

void _itemAttach(IsarCollection<dynamic> col, Id id, Item object) {
  object.id = id;
}

extension ItemQueryWhereSort on QueryBuilder<Item, Item, QWhere> {
  QueryBuilder<Item, Item, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ItemQueryWhere on QueryBuilder<Item, Item, QWhereClause> {
  QueryBuilder<Item, Item, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(lower: id, upper: id));
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idGreaterThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idLessThan(
    Id id, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.between(
          lower: lowerId,
          includeLower: includeLower,
          upper: upperId,
          includeUpper: includeUpper,
        ),
      );
    });
  }
}

extension ItemQueryFilter on QueryBuilder<Item, Item, QFilterCondition> {
  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: value),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'id', value: value),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'id',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'id',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> igdbGameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'igdbGame'),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> igdbGameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'igdbGame'),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemTypeEqualTo(
    ItemType value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'itemType', value: value),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemTypeGreaterThan(
    ItemType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'itemType',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemTypeLessThan(
    ItemType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'itemType',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemTypeBetween(
    ItemType lower,
    ItemType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'itemType',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameGreaterThan(
    String value, {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameLessThan(
    String value, {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameContains(
    String value, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
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

  QueryBuilder<Item, Item, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'name', value: ''),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'shortDesc',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'shortDesc',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'shortDesc',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'shortDesc',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'shortDesc',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'shortDesc',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'shortDesc',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'shortDesc',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'shortDesc', value: ''),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> shortDescIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'shortDesc', value: ''),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'thumb',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'thumb',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'thumb',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'thumb',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'thumb',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'thumb',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'thumb',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'thumb',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'thumb', value: ''),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> thumbIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'thumb', value: ''),
      );
    });
  }
}

extension ItemQueryObject on QueryBuilder<Item, Item, QFilterCondition> {
  QueryBuilder<Item, Item, QAfterFilterCondition> igdbGame(
    FilterQuery<IgdbGame> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'igdbGame');
    });
  }
}

extension ItemQueryLinks on QueryBuilder<Item, Item, QFilterCondition> {}

extension ItemQuerySortBy on QueryBuilder<Item, Item, QSortBy> {
  QueryBuilder<Item, Item, QAfterSortBy> sortByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortDesc', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByShortDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortDesc', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByThumb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumb', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByThumbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumb', Sort.desc);
    });
  }
}

extension ItemQuerySortThenBy on QueryBuilder<Item, Item, QSortThenBy> {
  QueryBuilder<Item, Item, QAfterSortBy> thenByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByApiIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apiId', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemType', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByShortDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortDesc', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByShortDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortDesc', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByThumb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumb', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByThumbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thumb', Sort.desc);
    });
  }
}

extension ItemQueryWhereDistinct on QueryBuilder<Item, Item, QDistinct> {
  QueryBuilder<Item, Item, QDistinct> distinctByApiId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemType');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByName({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByShortDesc({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shortDesc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByThumb({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thumb', caseSensitive: caseSensitive);
    });
  }
}

extension ItemQueryProperty on QueryBuilder<Item, Item, QQueryProperty> {
  QueryBuilder<Item, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Item, int, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<Item, IgdbGame?, QQueryOperations> igdbGameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'igdbGame');
    });
  }

  QueryBuilder<Item, ItemType, QQueryOperations> itemTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemType');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> shortDescProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shortDesc');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> thumbProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thumb');
    });
  }
}
