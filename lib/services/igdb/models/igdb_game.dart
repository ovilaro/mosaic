// To parse this JSON data, do
//
//     final igdbGame = igdbGameFromJson(jsonString);

import 'dart:convert';

List<IgdbGame> igdbGameFromJson(String str) =>
    List<IgdbGame>.from(json.decode(str).map((x) => IgdbGame.fromJson(x)));

String igdbGameToJson(List<IgdbGame> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class IgdbGame {
  final int id;
  final Cover cover;
  final int? firstReleaseDate;
  final List<GameInfo>? gameModes;
  final List<GameInfo>? genres;
  final String name;
  final List<Platform>? platforms;
  final String summary;
  final List<GameInfo>? themes;
  final GameType gameType;
  final String? storyline;

  IgdbGame({
    required this.id,
    required this.cover,
    this.firstReleaseDate,
    this.gameModes,
    this.genres,
    required this.name,
    this.platforms,
    required this.summary,
    this.themes,
    required this.gameType,
    this.storyline,
  });

  factory IgdbGame.fromJson(Map<String, dynamic> json) => IgdbGame(
    id: json["id"],
    cover: Cover.fromJson(json["cover"]),
    firstReleaseDate: json["first_release_date"],
    gameModes: json["game_modes"] == null
        ? []
        : List<GameInfo>.from(
            json["game_modes"]!.map((x) => GameInfo.fromJson(x)),
          ),
    genres: json["genres"] == null
        ? []
        : List<GameInfo>.from(json["genres"]!.map((x) => GameInfo.fromJson(x))),
    name: json["name"],
    platforms: json["platforms"] == null
        ? []
        : List<Platform>.from(
            json["platforms"]!.map((x) => Platform.fromJson(x)),
          ),
    summary: json["summary"],
    themes: json["themes"] == null
        ? []
        : List<GameInfo>.from(json["themes"]!.map((x) => GameInfo.fromJson(x))),
    gameType: GameType.fromJson(json["game_type"]),
    storyline: json["storyline"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "cover": cover.toJson(),
    "first_release_date": firstReleaseDate,
    "game_modes": gameModes == null
        ? []
        : List<dynamic>.from(gameModes!.map((x) => x.toJson())),
    "genres": genres == null
        ? []
        : List<dynamic>.from(genres!.map((x) => x.toJson())),
    "name": name,
    "platforms": platforms == null
        ? []
        : List<dynamic>.from(platforms!.map((x) => x.toJson())),
    "summary": summary,
    "themes": themes == null
        ? []
        : List<dynamic>.from(themes!.map((x) => x.toJson())),
    "game_type": gameType.toJson(),
    "storyline": storyline,
  };
}

class Cover {
  final int id;
  final String url;

  String get coverSmall {
    return url.replaceFirst("thumb", "cover_small_2x");
  }

  String get coverBig {
    return url.replaceFirst("thumb", "cover_big_2x");
  }

  Cover({required this.id, required this.url});

  factory Cover.fromJson(Map<String, dynamic> json) =>
      Cover(id: json["id"], url: json["url"]);

  Map<String, dynamic> toJson() => {"id": id, "url": url};
}

class GameInfo {
  final int id;
  final String name;

  GameInfo({required this.id, required this.name});

  factory GameInfo.fromJson(Map<String, dynamic> json) =>
      GameInfo(id: json["id"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name};
}

class GameType {
  final int id;
  final String type;

  GameType({required this.id, required this.type});

  factory GameType.fromJson(Map<String, dynamic> json) =>
      GameType(id: json["id"], type: json["type"]);

  Map<String, dynamic> toJson() => {"id": id, "type": type};
}

class Platform {
  final int id;
  final String abbreviation;
  final String name;

  Platform({required this.id, required this.abbreviation, required this.name});

  factory Platform.fromJson(Map<String, dynamic> json) => Platform(
    id: json["id"],
    abbreviation: json["abbreviation"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "abbreviation": abbreviation,
    "name": name,
  };
}
