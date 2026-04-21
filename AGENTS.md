# AGENTS.md

This file provides guidance for AI agents working on the Mosaic codebase.

## Critical Issues to Address

### Bugs (All Unfixed - Verified 2026-03-20)
- **Inverted filter logic** in `MosaicData.isAnyFilterEnabled()` (`lib/provider/mosaic_data.dart:219`) - Returns `true` when a filter is disabled. Should be: `if (getFilterEnabled(category, filterRange)) return true;`
- **Open Library Edition URL** (`lib/services/open_library_service.dart:115`) - `getEditionDetails()` uses `/works/` but should use `/books/` for the editions API
- **API field typo** (`lib/services/open_library_service.dart:82`) - `exerpts` should be `excerpts` - excerpts won't be returned from API
- **Stream subscription leak** in `lib/services/database.dart:19` - `.listen()` result is not stored for disposal
- **Missing error handling** - All async operations lack try-catch blocks, especially in `updateDetailInfoIfNeeded()`

### Code Quality (Unfixed)
- **N+1 query problem** in search (`lib/provider/mosaic_data.dart:73-75`) - Loops through results calling `isApiIdAdded()` individually instead of batching

### Testing (Critical Gap)
- **No tests exist** - The entire codebase lacks unit tests, widget tests, and integration tests
- **Priority areas for testing:**
  - `LazyIndexedStack` widget (lazy loading behavior, cache invalidation)
  - `MosaicData` provider (state management, filter logic)
  - Services (`Database`, `Preferences`, `IgdbService`, `OpenLibraryService`)
  - Models (serialization, deserialization)
- **Test framework:** Use Flutter's built-in `flutter_test` package
- **Test location:** `test/` directory mirroring `lib/` structure

## Development Guidelines

### Before Making Changes
1. Check existing patterns in similar files
2. Follow the singleton pattern for services
3. Use `@ignore` for computed properties in Isar models
4. Never edit `.g.dart` files manually

### Testing
- **No tests exist** - Add unit tests for models, services, and provider
- Run `flutter test` to execute tests

### State Management
- All state flows through `MosaicData` provider
- Use `context.watch()` for rebuilds, `context.read()` for single calls

### Navigation Architecture
- `MainNavigationBar` uses Flutter's `NavigationBar` with `LazyIndexedStack` for preserved page state and lazy loading
- `FloatingActionButton` appears only on waterfall tabs (Not Started, In Progress, Finished)
- FAB passes `targetStatus` to `Search` → `SearchTile` for proper item categorization
- Settings tab has no FAB

### Data Layer
- Isar requires `build_runner` regeneration after model changes
- Preferences uses SharedPreferences singleton
- All services are singletons with `_internal()` pattern

### Common Commands
```bash
flutter pub get          # Install dependencies
flutter run              # Run app
flutter test             # Run tests
dart run build_runner build      # Regenerate Isar schemas
dart run build_runner watch      # Auto-regenerate on changes
```

## File Locations

- **State:** `lib/provider/mosaic_data.dart`
- **Models:** `lib/models/` (Item, IgdbGame, OpenLibrary)
- **Services:** `lib/services/` (Database, Preferences, IgdbService, OpenLibraryService)
- **Screens:** `lib/screens/` (Splash, MainNavigationBar, WaterfallItems, Search, ItemDetail, Settings)
- **Styles:** `lib/styles/app_styles.dart`
- **API Keys:** `lib/api_keys.dart` (loads from `.env` file)

### Scroll Performance (Verified 2026-04-21)
- ✅ **`memCacheWidth` added to CachedNetworkImage** (`lib/widgets/waterfall_item.dart:38`) — Reduces memory and decode time by downscaling images to display width
- ✅ **`collectGarbage` removed** (`lib/screens/waterfall_items.dart:84-99`) — Image eviction on scroll-out removed; Flutter's image cache handles memory pressure with LRU eviction
- ✅ **`lastChildLayoutTypeBuilder` removed** (`lib/screens/waterfall_items.dart:84-86`) — Dead code removed (condition was always false)
- **`getItemsWithStatus()` runs on every rebuild** (`lib/provider/mosaic_data.dart:104-133`) — Every `notifyListeners()` causes full `.where().toList()` + `.sort()`. Cache the result and invalidate only when items/order/filters change, using a dirty flag or `Selector`
- **`Consumer<MosaicData>` wraps entire Scaffold** (`lib/screens/waterfall_items.dart:24`) — Any MosaicData change (theme, nav labels, etc.) rebuilds entire Scaffold + grid. Use `Selector` to scope rebuilds to just the items list and filter/sort state, or move `Consumer` down to just the `body`
- **Computed `@ignore` getters re-traverse nested objects** (`lib/models/item.dart:106-231`) — `name`, `coverBig`, `thumb`, `shortDesc` re-traverse and recompute on every access. Cache these as late fields or compute once at insertion time

## Known Anti-patterns to Avoid

1. Don't hardcode credentials - use `.env` file with validation
2. Don't use `!` operator without null checks
3. Don't create new service instances (use singleton pattern)
4. Don't duplicate filter modal code - extract to reusable method
5. Don't ignore async errors - always add try-catch

## Code Review Recommendations (From 2026-03-20 Review)

### Current Changes Review
- **Empty navigation labels** - Using empty strings `''` for labels reduces accessibility. Use `NavigationDestinationLabelBehavior.onlyShowSelected` instead
- **Hardcoded height** - Magic number `56` in `main_navigation_bar.dart:35` should be extracted to `AppStyles`
- **LazyIndexedStack const requirement** - Children MUST be const widgets for proper caching (documented in class dartdoc)
- **Untracked file** - `AGENTS.md` should be committed if it's part of project documentation

### Resolved Issues
- ✅ **LazyIndexedStack documentation** - Added comprehensive class and member documentation with prominent const requirement warning
- ✅ **LazyIndexedStack optimization** - Removed child change detection logic (relies on const children as documented)
- ✅ **LazyIndexedStack robustness** - Removed redundant bounds checks (guaranteed by assertions)
- ✅ **Navigation accessibility** - Added `tooltip` properties for screen reader support