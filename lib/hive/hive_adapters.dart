import 'package:hive_ce/hive_ce.dart';
import 'package:mosaic/models/igdb/igdb_game.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/models/open_library/open_library_edition.dart';
import 'package:mosaic/models/open_library/open_library_search.dart';
import 'package:mosaic/models/open_library/open_library_work.dart';

@GenerateAdapters([
  // Root + enums
  AdapterSpec<Item>(ignoredFields: {'isAdded'}),
  AdapterSpec<ItemCategory>(),
  AdapterSpec<ItemStatus>(),
  // IGDB
  AdapterSpec<IgdbGame>(),
  AdapterSpec<IgdbCover>(),
  AdapterSpec<IgdbGameInfo>(),
  AdapterSpec<GameType>(),
  // Open Library search
  AdapterSpec<OpenLibrarySearchDoc>(),
  AdapterSpec<OpenLibraryEditions>(),
  AdapterSpec<OpenLibraryEditionsDoc>(),
  // Open Library work
  AdapterSpec<OpenLibraryWork>(),
  AdapterSpec<OpenLibraryAuthor>(),
  AdapterSpec<OpenLibraryType>(),
  AdapterSpec<OpenLibraryCreated>(),
  AdapterSpec<OpenLibraryExcerpt>(),
  AdapterSpec<OpenLibraryIdentifiers>(),
  AdapterSpec<OpenLibraryLink>(),
  // Open Library edition
  AdapterSpec<OpenLibraryEdition>(),
  AdapterSpec<OpenLibraryEditionType>(),
  AdapterSpec<OpenLibraryEditionClassifications>(),
  AdapterSpec<OpenLibraryEditionContributor>(),
  AdapterSpec<OpenLibraryEditionCreated>(),
])
part 'hive_adapters.g.dart';
