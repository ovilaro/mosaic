// To parse this JSON data, do
//
//     final igdbGame = igdbGameFromJson(jsonString);

import 'dart:convert';

List<IgdbGame> igdbGameFromJson(String str) =>
    List<IgdbGame>.from(json.decode(str).map((x) => IgdbGame.fromJson(x)));

String igdbGameToJson(List<IgdbGame> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class IgdbGame {
  final int? id;
  final Cover? cover;
  final int? firstReleaseDate;
  final List<GameInfo>? gameModes;
  final List<GameInfo>? genres;
  final String? name;
  final List<GameInfo>? platforms;
  final String? summary;
  final List<GameInfo>? themes;
  final GameType? gameType;
  final String? storyline;

  IgdbGame({
    this.id,
    this.cover,
    this.firstReleaseDate,
    this.gameModes,
    this.genres,
    this.name,
    this.platforms,
    this.summary,
    this.themes,
    this.gameType,
    this.storyline,
  });

  factory IgdbGame.fromJson(Map<String, dynamic> json) => IgdbGame(
    id: json["id"],
    cover: json["cover"] == null ? null : Cover.fromJson(json["cover"]),
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
        : List<GameInfo>.from(
            json["platforms"]!.map((x) => GameInfo.fromJson(x)),
          ),
    summary: json["summary"],
    themes: json["themes"] == null
        ? []
        : List<GameInfo>.from(json["themes"]!.map((x) => GameInfo.fromJson(x))),
    gameType: json["game_type"] == null
        ? null
        : GameType.fromJson(json["game_type"]),
    storyline: json["storyline"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "cover": cover?.toJson(),
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
    "game_type": gameType?.toJson(),
    "storyline": storyline,
  };
}

class Cover {
  final int? id;
  final String? url;

  String? get coverSmall {
    return url?.replaceFirst("thumb", "cover_small_2x");
  }

  String? get coverBig {
    return url?.replaceFirst("thumb", "cover_big_2x");
  }

  Cover({this.id, this.url});

  factory Cover.fromJson(Map<String, dynamic> json) =>
      Cover(id: json["id"], url: json["url"]);

  Map<String, dynamic> toJson() => {"id": id, "url": url};
}

class GameInfo {
  final int? id;
  final String? name;

  GameInfo({this.id, this.name});

  factory GameInfo.fromJson(Map<String, dynamic> json) =>
      GameInfo(id: json["id"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name};
}

class GameType {
  final int? id;
  final String? type;

  GameType({this.id, this.type});

  factory GameType.fromJson(Map<String, dynamic> json) =>
      GameType(id: json["id"], type: json["type"]);

  Map<String, dynamic> toJson() => {"id": id, "type": type};
}
