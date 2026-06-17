# AGENTS.md

This file provides guidance for AI agents working on the Mosaic codebase.

## Application Architecture

### Startup Flow
```
Splash
├── Preferences.init()
├── MosaicData.initAppThemePreference(deviceBrightness)
├── MosaicData.init()
│   └── Database.init(onData callback)
└── MosaicData.readItems()
    └── MainNavigationBar (pushReplacement)
```
The `Splash` screen performs a sequential bootstrap: initializes SharedPreferences, resolves the theme, opens the Isar database (via `MosaicData.init()`), and finally reads all items into memory before navigating to the main UI.

### Navigation Structure
- **4-tab `NavigationBar`** backed by `LazyIndexedStack` (preserves page state and enables lazy loading).
- **Tabs:** Not Started, In Progress, Finished, Settings.
- **FloatingActionButton** appears only on the three waterfall tabs. Tapping it pushes `Search` with the current tab's `targetStatus` so newly added items land in the correct bucket.
- Settings has no FAB.

### Data Flow
```
APIs (IGDB / Open Library)
  → Services (IgdbService / OpenLibraryService)
    → MosaicData ChangeNotifier
      → UI via context.watch<MosaicData>() or Consumer<MosaicData>
```
`Database` and `Preferences` are singletons using the `_internal()` pattern. `IgdbService` and `OpenLibraryService` are regular classes instantiated directly in `MosaicData`. `MosaicData` is the single source of truth for UI state.

---

## Data Model

### `Item` (Isar `@Collection`)
The central domain object. It is polymorphic: an `Item` represents either a **Game** or a **Book**, determined by `itemCategory`.

| Property | Type | Notes |
|---|---|---|
| `id` | `Id` | Auto-increment primary key |
| `apiId` | `String` | External API identifier. Collision-avoided by checking `itemCategory` in DB queries |
| `itemCategory` | `ItemCategory` | `game` or `book` |
| `itemStatus` | `ItemStatus` | `notStarted`, `inProgress`, `finished` |
| `igdbGame` | `IgdbGame?` | `@embedded` IGDB data |
| `openLibraryBook` | `OpenLibrarySearchDoc?` | `@embedded` Open Library search result |
| `openLibraryWork` | `OpenLibraryWork?` | `@embedded` Loaded lazily via detail request |
| `openLibraryEdition` | `OpenLibraryEdition?` | `@embedded` Loaded lazily via detail request |
| `needsDetailRequest` | `bool` | True for books until work/edition details are fetched |
| `dateTimeCreated` | `DateTime` | Timestamp |
| `dateTimeModified` | `DateTime` | Timestamp |
| `isAdded` | `bool` | **Runtime-only**, `@ignore`d. Set after search to indicate DB existence |

### Computed Getters (`@ignore`)
These re-traverse nested objects on **every access**:
- `name` — Game title or book title/subtitle concatenation
- `shortDesc` — Release year (games) or author + date (books)
- `thumb` — IGDB `thumb_2x` or Open Library `-S.jpg` cover URL
- `coverBig` — IGDB `cover_big_2x` or Open Library `-L.jpg` cover URL
- `summary` — IGDB summary or Open Library description
- `storyInfo` / `itemInfo` — Maps of metadata for the detail screen

### Embedded Models Requiring `build_runner`
- `IgdbGame`, `IgdbCover`, `IgdbGameInfo`, `GameType`
- `OpenLibrarySearch`, `OpenLibrarySearchDoc`, `OpenLibraryEditions`, `OpenLibraryEditionsDoc`
- `OpenLibraryWork`, `OpenLibraryAuthor`, `OpenLibraryExcerpt`, `OpenLibraryCreated`, `OpenLibraryType`, `OpenLibraryIdentifiers`, `OpenLibraryLink`
- `OpenLibraryEdition`, `OpenLibraryEditionType`, `OpenLibraryEditionContributor`, `OpenLibraryEditionClassifications`, `OpenLibraryEditionCreated`

**Never edit `.g.dart` files manually.**

---

## Theme System

`AppStyles` manages a static dual-palette architecture:
- `_lightPalette` / `_darkPalette` hold semantic colors (e.g. `veryDarkGrey` maps to dark text in light mode and light text in dark mode).
- `applyBrightness(Brightness)` mutates the static `_palette` reference at runtime.
- Font: `GoogleFonts.inter()`
- `AppThemePreference` (values: `white`, `black`, `device`) maps to `ThemeMode.light/dark/system`.
- `MainApp` uses `WidgetsBindingObserver` to react to OS-level brightness changes when in `device` mode.

---

## API Integration

### IGDB (Twitch OAuth 2.0)
- **Auth endpoint:** `id.twitch.tv/oauth2/token`
- **Game search:** `api.igdb.com/v4/games` with plaintext `fields` body
- **Auth token:** Validated via `IgdbAuthResult.isTokenValid` which compares `issued + expiresIn` against `DateTime.timestamp()`.
- **Rate limiting:** 250ms enforced in `IgdbService` between requests.

### Open Library
- **Search:** `openlibrary.org/search.json`
- **Work details:** `openlibrary.org/works/$olid.json`
- **Edition details:** `openlibrary.org/books/$olid.json` (current bug: uses `/works/`)
- **Required header:** `User-Agent` (loaded from `.env`)
- **Rate limiting:** 250ms enforced in `OpenLibraryService`.

### Image URL Construction
- **IGDB Covers:** Raw URL is protocol-relative (`//...`). Prefixed with `https:` and `thumb` is replaced by `thumb_2x` (list) or `cover_big_2x` (detail).
- **Open Library Covers:** Constructed from the OLID, using `/b/olid/{olid}-S.jpg` (thumb) or `-L.jpg` (detail) with `?default=false`.

---

## Widget Catalog

| Widget | File | Purpose |
|---|---|---|
| `LazyIndexedStack` | `lib/widgets/lazy_indexed_stack.dart` | Lazy-loaded `IndexedStack`. **Children MUST be const** for correct caching. Built index is preserved across rebuilds. |
| `WaterfallItem` | `lib/widgets/waterfall_item.dart` | Grid card with `Hero` image transition, category ribbon, bottom name overlay. Uses `memCacheWidth` on `CachedNetworkImage`. |
| `SearchTile` | `lib/widgets/search_tile.dart` | List tile with thumbnail, title, category icon, short description, and add/delete toggle. |
| `FiltersCategory` | `lib/widgets/filters_category.dart` | Selectable Card chip for enabling/disabling a category in filters. |
| `ItemCategoryRibbon` | `lib/widgets/item_category_ribbon.dart` | Small rounded badge in the top-right of cover images showing the category icon. |
| `ItemInfoTable` | `lib/widgets/item_info_table.dart` | `Table` widget that renders `Map<String, String>` metadata rows. |

---

## Search Implementation

1. **Debounced Input:** `Search` stateful widget waits 750ms of idle typing before calling `MosaicData.search()`.
2. **Sequential API Calls:** IGDB and Open Library are queried sequentially (not concurrently) based on filter toggles. IGDB search completes before Open Library search begins.
3. **Interleaving:** Results from both APIs are interleaved (game, book, game, book...) up to the max length of the two result sets.
4. **Added Check (N+1):** After building the result list, each item individually calls `Database.instance.isApiIdAdded()`. **Known issue:** This is an N+1 query.
5. **Filter Modal:** A `showModalBottomSheet` with `isScrollControlled: true` allows toggling which categories participate in search.

---

## Item Detail Screen

- **Entry Parameter:** Receives `itemId` (int). Fetches the live `Item` via `MosaicData.getItem(id)`.
- **Lazy Detail Loading:** If `needsDetailRequest == true`, it triggers `updateDetailInfoIfNeeded()` and displays a `RefreshProgressIndicator`.
- **Hero Animation:** `Hero(tag: item.id)` wraps the cover image for a seamless transition from grid to detail.
- **Status Toggle:** `SegmentedButton<ItemStatus>` allows immediate state changes.
- **Share:** Downloads cover image bytes via `http.get()`, constructs an `XFile`, and shares via `SharePlus.instance.share()` along with summary text.
- **Delete:** Requires a confirmation `AlertDialog` via `deleteItemApiId()`.

---

## Error Handling Standards

**Current gaps:**
- Most async operations in `MosaicData` (especially `updateDetailInfoIfNeeded`) lack try-catch blocks.
- `ItemDetail` share feature does not guard against failed cover image downloads.
- Services log errors via `debugPrint` but do not propagate user-facing feedback.

**Guidelines:**
1. Wrap all service-bound async calls in try-catch.
2. Log via `debugPrint` or a logger, then handle gracefully (return empty/.null, show SnackBar, or expose an error state).
3. Do not use `!` operator on API results without null checks.
4. Consider introducing a `MosaicData.errorMessage` field or using `ScaffoldMessenger` for critical failures.

---

## Critical Issues to Address

### Bugs (All Unfixed - Verified 2026-03-20)
- **Inverted filter logic** in `MosaicData.isAnyFilterEnabled()` (`lib/provider/mosaic_data.dart:220`) - Returns `true` when a filter is disabled. Should be: `if (getFilterEnabled(category, filterRange)) return true;`
- **Open Library Edition URL** (`lib/services/open_library_service.dart:115`) - `getEditionDetails()` uses `/works/` but should use `/books/` for the editions API
- **API field typo** (`lib/services/open_library_service.dart:82`) - `exerpts` should be `excerpts` - excerpts won't be returned from API
- **Stream subscription leak** in `lib/services/database.dart:19` - `.listen()` result is not stored for disposal
- **Missing error handling** - All async operations lack try-catch blocks, especially in `updateDetailInfoIfNeeded()`

### Code Quality (Unfixed)
- **N+1 query problem** in search (`lib/provider/mosaic_data.dart:75-77`) - Loops through results calling `isApiIdAdded()` individually instead of batching

---

## Testing

**No tests exist** - The entire codebase lacks unit tests, widget tests, and integration tests.

### Test Framework
- Use Flutter's built-in `flutter_test` package.
- Location: `test/` directory mirroring `lib/` structure.

### Mocking Strategy
- **HTTP:** Use `http` package mocking or `mockito` for `IgdbService` and `OpenLibraryService`.
- **SharedPreferences:** Use `shared_preferences` test utilities or mock `Preferences` directly.
- **Isar:** Use an in-memory Isar instance, or abstract `Database` behind a repository interface for unit tests.
- **Provider Tests:** Use `ChangeNotifierProvider` with `tester.pumpWidget()` to verify `MosaicData` notifies listeners.

### Priority Areas
- **`LazyIndexedStack`** - Verify lazy build (only visible index built), cache persistence, and length-change adaptation.
- **`MosaicData`** - Filter logic (`isAnyFilterEnabled`), `getItemsWithStatus` sorting, theme preference syncing.
- **`IgdbAuthResult`** - Token validity boundary checks (expired vs. valid).
- **`Item` computed getters** - `name`, `coverBig`, `thumb` with both game and book payloads.
- **`Preferences`** - Round-trip serialization/deserialization for enums (`ItemOrder`, `AppThemePreference`).
- **Widget tests for `WaterfallItem` and `SearchTile`** - Null cover handling, add/delete button states.

### Commands
```bash
flutter test             # Run tests
flutter test test/unit   # Run unit tests only (once created)
```

---

## Development Guidelines

### Before Making Changes
1. Check existing patterns in similar files.
2. Follow the singleton pattern for services (`_internal()`).
3. Use `@ignore` for computed properties in Isar models.
4. Never edit `.g.dart` files manually.

### State Management
- All state flows through `MosaicData` provider.
- Use `context.watch()` for rebuilds, `context.read()` for single calls.
- **Performance tip:** `Consumer<MosaicData>` wrapping a `Scaffold` rebuilds the entire subtree. Prefer `Selector` to scope rebuilds to specific slices (e.g. only the items list).

### Data Layer
- Isar requires `build_runner` regeneration after model changes.
- Preferences uses `SharedPreferences` singleton.

### Common Commands
```bash
flutter pub get                     # Install dependencies
flutter run                         # Run app
flutter test                        # Run tests
dart run build_runner build         # Regenerate Isar schemas
dart run build_runner watch         # Auto-regenerate on changes
```

---

## File Locations

- **State:** `lib/provider/mosaic_data.dart`
- **Models:** `lib/models/` (Item, IgdbGame, OpenLibrary)
- **Services:** `lib/services/` (Database, Preferences, IgdbService, OpenLibraryService)
- **Screens:** `lib/screens/` (Splash, MainNavigationBar, WaterfallItems, Search, ItemDetail, Settings)
- **Styles:** `lib/styles/app_styles.dart`
- **Widgets:** `lib/widgets/` (LazyIndexedStack, WaterfallItem, SearchTile, etc.)
- **API Keys:** `lib/api_keys.dart` (loads from `.env` file)

---

## Asset & Build Configuration

### Assets
```yaml
assets:
  - .env                         # API keys & secrets
  - assets/placeholders/         # Fallback cover/thumb images
  - assets/icons/                # SVG sort icons used by Item.getOrderIcon()
  - assets/app_icon/             # Launcher icon sources
```

### Packages used for build tooling
- `flutter_launcher_icons` — Generates platform app icons.
- `package_rename` — Configures Android/iOS bundle identifiers:
  - Android: `com.vegetals.mosaic`
  - iOS: `com.vegetals.mosaic`

---

## Scroll Performance

- ✅ **`memCacheWidth` added to CachedNetworkImage** (`lib/widgets/waterfall_item.dart:38`) — Reduces memory and decode time by downscaling images to display width.
- ✅ **`collectGarbage` removed** (`lib/screens/waterfall_items.dart:84-99`) — Image eviction on scroll-out removed; Flutter's image cache handles memory pressure with LRU eviction.
- ✅ **`lastChildLayoutTypeBuilder` removed** (`lib/screens/waterfall_items.dart:84-86`) — Dead code removed (condition was always false).

### Outstanding Performance Issues
- **`getItemsWithStatus()` runs on every rebuild** (`lib/provider/mosaic_data.dart:104-133`) — Every `notifyListeners()` causes full `.where().toList()` + `.sort()`. Cache the result and invalidate only when items/order/filters change, using a dirty flag or `Selector`.
- **`Consumer<MosaicData>` wraps entire Scaffold** (`lib/screens/waterfall_items.dart:24`) — Any MosaicData change (theme, nav labels, etc.) rebuilds entire Scaffold + grid. Use `Selector` to scope rebuilds to just the items list and filter/sort state, or move `Consumer` down to just the `body`.
- **Computed `@ignore` getters re-traverse nested objects** (`lib/models/item.dart:106-231`) — `name`, `coverBig`, `thumb`, `shortDesc` re-traverse and recompute on every access. Cache these as `late` fields or compute once at insertion time.
- **`search.dart` uses `ListView` with explicit `for` loop** instead of `ListView.builder`, materializing all widgets regardless of viewport.
- **`main.dart` watches `MosaicData`** — Theme changes rebuild the entire `MaterialApp` tree, which is acceptable but should be noted if the app grows.

---

## Known Anti-patterns to Avoid

1. Don't hardcode credentials - use `.env` file with validation (see `_validateApiKeys()` in `main.dart`).
2. Don't use `!` operator without null checks.
3. Don't create new service instances (use singleton pattern).
4. Don't duplicate filter modal code - extract to reusable method.
5. Don't ignore async errors - always add try-catch.
6. **New:** Don't mutate items inline in async detail loaders without transaction safety (see `updateDetailInfoIfNeeded`).
7. **New:** Avoid `Consumer<EntireProvider>` at high levels of the widget tree; prefer `Selector` for granular rebuilds.
8. **New:** Don't call `setState` multiple times in a tight synchronous block (e.g., `Splash.init`) when a single call at the end would suffice.

---

## Code Review Recommendations

### Current Changes Review
- **LazyIndexedStack const requirement** - Children MUST be const widgets for proper caching (documented in class dartdoc).
- **Untracked file** - `AGENTS.md` should be committed if it's part of project documentation.

### Resolved Issues
- ✅ **LazyIndexedStack documentation** - Added comprehensive class and member documentation with prominent const requirement warning.
- ✅ **LazyIndexedStack optimization** - Removed child change detection logic (relies on const children as documented).
- ✅ **LazyIndexedStack robustness** - Removed redundant bounds checks (guaranteed by assertions).
- ✅ **Navigation accessibility** - Added `tooltip` properties for screen reader support.
- ✅ **Navigation labels** - Labels use proper strings (`'Not Started'`, `'In Progress'`, etc.) with `tooltip`, not empty strings.
- ✅ **Nav bar height** - Extracted to `AppStyles.navBarCompactHeight` (`app_styles.dart:222`) instead of magic number.
