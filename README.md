# Mosaic

Mosaic is a leisure management app that lets you catalog and track your games and books in one place. Search online databases, organize items by progress status, and browse your collection in a waterfall grid — all stored locally on your device with no account required.

## Features

- **Search & add** — Find games via IGDB and books via Open Library, then add them to your collection
- **Progress tracking** — Categorize items as Not Started, In Progress, or Finished
- **Waterfall grid** — Browse your collection in a masonry-style layout with cover art
- **Category filters** — Filter by games, books, or both; separate filter settings per tab
- **Sort options** — Cycle through sort by date added/modified, ascending/descending
- **Item detail view** — View cover art, description, story info, and metadata table
- **Share** — Share item details with cover image via the system share sheet
- **Widescreen layout (WIP)** — On wide screens (≥ 900px, e.g. macOS desktop), the grid and item detail appear side-by-side; the detail body splits into two columns at very wide widths. Currently iterating.
- **Dark & light themes** — White, Black, or follow device setting
- **Accessibility** — Toggle navigation bar labels for screen reader support
- **Offline-first** — All data stored locally via Isar database, no account needed

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter (Dart) |
| State Management | Provider |
| Local Database | Isar Community |
| Preferences | SharedPreferences |
| Game Data | IGDB API (v4) |
| Book Data | Open Library API |
| Image Caching | CachedNetworkImage |
| Layout | waterfall_flow |
| Desktop (macOS) | Flutter macOS with App Sandbox + `network.client` entitlement |
| Env Config | flutter_dotenv |
| Icons (sort) | flutter_svg |
| Icons (UI) | material_symbols_icons |
| HTTP client | http |
| File system | path_provider |

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (^3.12.0)
- [JDK 17](https://adoptium.net/) (required by share_plus 13+ and AGP 8.12+)
- IGDB API credentials — [Get them here](https://dev.igdb.com/)
- Open Library User-Agent — [Policy here](https://openlibrary.org/developers)

### Setup

1. Clone the repository
2. Copy `.env.example` to `.env` and fill in your credentials:
   ```
   IGDB_CLIENT_ID=your_client_id
   IGDB_CLIENT_SECRET=your_client_secret
   OPEN_LIBRARY_USER_AGENT=YourApp/1.0 (your-email@example.com)
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Generate Isar schemas:
   ```bash
   dart run build_runner build
   ```
5. Run the app:
   ```bash
   flutter run
   ```

### Isar Code Generation

The project currently uses Isar Community 3.3.2. `build_runner 2.15.1` is intentionally
the newest compatible release because `build_runner 2.16.0` requires Analyzer 13.3 or
newer, while the Isar Community generator requires Analyzer below 11. An Isar Plus
migration is deferred until the database layer is intentionally upgraded.

### Running on macOS

Desktop builds target macOS with the App Sandbox enabled. Outgoing network access (IGDB, Open Library, image caching) requires the `com.apple.security.network.client` entitlement, which is already set in `macos/Runner/DebugProfile.entitlements` and `macos/Runner/Release.entitlements`.

```bash
flutter run -d macos
```

The default window content size is 390×844 so macOS runs in a phone-like portrait viewport for quick UI testing without a simulator. The window remains resizable: widen it beyond 900px to exercise the two-pane desktop layout.

## Architecture

```
lib/
├── main.dart        # App entry point; loads .env, validates keys, wires Provider + MaterialApp
├── models/          # Data models (Item, IgdbGame, OpenLibrary, AppThemePreference, IgdbAuthResult)
├── provider/        # MosaicData — central state (ChangeNotifier)
├── screens/         # UI screens
│   ├── splash.dart
│   ├── main_navigation_bar.dart
│   ├── waterfall_items.dart      # Grid views per status
│   ├── search.dart               # API search with debounce
│   ├── filters.dart             # Category filter modals
│   ├── item_detail.dart         # Detail/share view
│   └── settings.dart            # Theme & accessibility
├── services/        # Singletons (Database, Preferences, IgdbService, OpenLibraryService)
├── styles/          # AppStyles — theme, colors, text styles
├── widgets/         # Reusable components (WaterfallItem, SearchTile, etc.)
└── api_keys.dart    # Loads credentials from .env
```

**State flow:** All state flows through `MosaicData` (Provider). Use `context.watch()` for rebuilds, `context.read()` for one-shot calls. `notifyListeners()` triggers UI updates.

**Navigation:** `MainNavigationBar` uses Flutter's `NavigationBar` with `LazyIndexedStack` for preserved page state and lazy loading. Each waterfall tab owns its own `FloatingActionButton`, which opens `Search` with the `targetStatus` of that bucket.

## Screenshots

<!-- Add screenshots here -->

## License

All rights reserved.
