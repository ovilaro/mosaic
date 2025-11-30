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
    r'apiId': PropertySchema(id: 0, name: r'apiId', type: IsarType.string),
    r'igdbGame': PropertySchema(
      id: 1,
      name: r'igdbGame',
      type: IsarType.object,

      target: r'IgdbGame',
    ),
    r'ignoreImages': PropertySchema(
      id: 2,
      name: r'ignoreImages',
      type: IsarType.bool,
    ),
    r'itemStatus': PropertySchema(
      id: 3,
      name: r'itemStatus',
      type: IsarType.byte,
      enumMap: _ItemitemStatusEnumValueMap,
    ),
    r'itemType': PropertySchema(
      id: 4,
      name: r'itemType',
      type: IsarType.byte,
      enumMap: _ItemitemTypeEnumValueMap,
    ),
    r'needsDetailRequest': PropertySchema(
      id: 5,
      name: r'needsDetailRequest',
      type: IsarType.bool,
    ),
    r'openLibraryBook': PropertySchema(
      id: 6,
      name: r'openLibraryBook',
      type: IsarType.object,

      target: r'OpenLibrarySearchDoc',
    ),
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
    r'OpenLibrarySearchDoc': OpenLibrarySearchDocSchema,
    r'OpenLibraryEditions': OpenLibraryEditionsSchema,
    r'OpenLibraryEditionsDoc': OpenLibraryEditionsDocSchema,
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
  bytesCount += 3 + object.apiId.length * 3;
  {
    final value = object.igdbGame;
    if (value != null) {
      bytesCount +=
          3 +
          IgdbGameSchema.estimateSize(value, allOffsets[IgdbGame]!, allOffsets);
    }
  }
  {
    final value = object.openLibraryBook;
    if (value != null) {
      bytesCount +=
          3 +
          OpenLibrarySearchDocSchema.estimateSize(
            value,
            allOffsets[OpenLibrarySearchDoc]!,
            allOffsets,
          );
    }
  }
  return bytesCount;
}

void _itemSerialize(
  Item object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apiId);
  writer.writeObject<IgdbGame>(
    offsets[1],
    allOffsets,
    IgdbGameSchema.serialize,
    object.igdbGame,
  );
  writer.writeBool(offsets[2], object.ignoreImages);
  writer.writeByte(offsets[3], object.itemStatus.index);
  writer.writeByte(offsets[4], object.itemType.index);
  writer.writeBool(offsets[5], object.needsDetailRequest);
  writer.writeObject<OpenLibrarySearchDoc>(
    offsets[6],
    allOffsets,
    OpenLibrarySearchDocSchema.serialize,
    object.openLibraryBook,
  );
}

Item _itemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Item();
  object.apiId = reader.readString(offsets[0]);
  object.id = id;
  object.igdbGame = reader.readObjectOrNull<IgdbGame>(
    offsets[1],
    IgdbGameSchema.deserialize,
    allOffsets,
  );
  object.ignoreImages = reader.readBool(offsets[2]);
  object.itemStatus =
      _ItemitemStatusValueEnumMap[reader.readByteOrNull(offsets[3])] ??
      ItemStatus.notStarted;
  object.itemType =
      _ItemitemTypeValueEnumMap[reader.readByteOrNull(offsets[4])] ??
      ItemType.game;
  object.needsDetailRequest = reader.readBool(offsets[5]);
  object.openLibraryBook = reader.readObjectOrNull<OpenLibrarySearchDoc>(
    offsets[6],
    OpenLibrarySearchDocSchema.deserialize,
    allOffsets,
  );
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
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<IgdbGame>(
            offset,
            IgdbGameSchema.deserialize,
            allOffsets,
          ))
          as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (_ItemitemStatusValueEnumMap[reader.readByteOrNull(offset)] ??
              ItemStatus.notStarted)
          as P;
    case 4:
      return (_ItemitemTypeValueEnumMap[reader.readByteOrNull(offset)] ??
              ItemType.game)
          as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readObjectOrNull<OpenLibrarySearchDoc>(
            offset,
            OpenLibrarySearchDocSchema.deserialize,
            allOffsets,
          ))
          as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ItemitemStatusEnumValueMap = {
  'notStarted': 0,
  'inProgress': 1,
  'finished': 2,
};
const _ItemitemStatusValueEnumMap = {
  0: ItemStatus.notStarted,
  1: ItemStatus.inProgress,
  2: ItemStatus.finished,
};
const _ItemitemTypeEnumValueMap = {'game': 0, 'book': 1};
const _ItemitemTypeValueEnumMap = {0: ItemType.game, 1: ItemType.book};

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
  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'apiId',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.startsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.endsWith(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdContains(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.contains(
          property: r'apiId',
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdMatches(
    String pattern, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.matches(
          property: r'apiId',
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'apiId', value: ''),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> apiIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(property: r'apiId', value: ''),
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

  QueryBuilder<Item, Item, QAfterFilterCondition> ignoreImagesEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'ignoreImages', value: value),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemStatusEqualTo(
    ItemStatus value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'itemStatus', value: value),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemStatusGreaterThan(
    ItemStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.greaterThan(
          include: include,
          property: r'itemStatus',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemStatusLessThan(
    ItemStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.lessThan(
          include: include,
          property: r'itemStatus',
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> itemStatusBetween(
    ItemStatus lower,
    ItemStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.between(
          property: r'itemStatus',
          lower: lower,
          includeLower: includeLower,
          upper: upper,
          includeUpper: includeUpper,
        ),
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

  QueryBuilder<Item, Item, QAfterFilterCondition> needsDetailRequestEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        FilterCondition.equalTo(property: r'needsDetailRequest', value: value),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> openLibraryBookIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNull(property: r'openLibraryBook'),
      );
    });
  }

  QueryBuilder<Item, Item, QAfterFilterCondition> openLibraryBookIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const FilterCondition.isNotNull(property: r'openLibraryBook'),
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

  QueryBuilder<Item, Item, QAfterFilterCondition> openLibraryBook(
    FilterQuery<OpenLibrarySearchDoc> q,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'openLibraryBook');
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

  QueryBuilder<Item, Item, QAfterSortBy> sortByIgnoreImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ignoreImages', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByIgnoreImagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ignoreImages', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemStatus', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByItemStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemStatus', Sort.desc);
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

  QueryBuilder<Item, Item, QAfterSortBy> sortByNeedsDetailRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsDetailRequest', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> sortByNeedsDetailRequestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsDetailRequest', Sort.desc);
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

  QueryBuilder<Item, Item, QAfterSortBy> thenByIgnoreImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ignoreImages', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByIgnoreImagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ignoreImages', Sort.desc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemStatus', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByItemStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemStatus', Sort.desc);
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

  QueryBuilder<Item, Item, QAfterSortBy> thenByNeedsDetailRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsDetailRequest', Sort.asc);
    });
  }

  QueryBuilder<Item, Item, QAfterSortBy> thenByNeedsDetailRequestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsDetailRequest', Sort.desc);
    });
  }
}

extension ItemQueryWhereDistinct on QueryBuilder<Item, Item, QDistinct> {
  QueryBuilder<Item, Item, QDistinct> distinctByApiId({
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apiId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByIgnoreImages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ignoreImages');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByItemStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemStatus');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByItemType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemType');
    });
  }

  QueryBuilder<Item, Item, QDistinct> distinctByNeedsDetailRequest() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'needsDetailRequest');
    });
  }
}

extension ItemQueryProperty on QueryBuilder<Item, Item, QQueryProperty> {
  QueryBuilder<Item, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Item, String, QQueryOperations> apiIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apiId');
    });
  }

  QueryBuilder<Item, IgdbGame?, QQueryOperations> igdbGameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'igdbGame');
    });
  }

  QueryBuilder<Item, bool, QQueryOperations> ignoreImagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ignoreImages');
    });
  }

  QueryBuilder<Item, ItemStatus, QQueryOperations> itemStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemStatus');
    });
  }

  QueryBuilder<Item, ItemType, QQueryOperations> itemTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemType');
    });
  }

  QueryBuilder<Item, bool, QQueryOperations> needsDetailRequestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'needsDetailRequest');
    });
  }

  QueryBuilder<Item, OpenLibrarySearchDoc?, QQueryOperations>
  openLibraryBookProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'openLibraryBook');
    });
  }
}
