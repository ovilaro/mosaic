// To parse this JSON data, do
//
//     final igdbGame = igdbGameFromJson(jsonString);

import 'dart:convert';

import 'package:isar_community/isar.dart';

part 'igdb_game.g.dart';

List<IgdbGame> igdbGameFromJson(String str) =>
    List<IgdbGame>.from(json.decode(str).map((x) => IgdbGame.fromJson(x)));

String igdbGameToJson(List<IgdbGame> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@embedded
class IgdbGame {
  final int? id;
  final IgdbCover? cover;
  final int? firstReleaseDate;
  final List<IgdbGameInfo>? gameModes;
  final List<IgdbGameInfo>? genres;
  final String? name;
  final List<IgdbGameInfo>? platforms;
  final String? summary;
  final List<IgdbGameInfo>? themes;
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

  DateTime? get releaseDate {
    if (firstReleaseDate == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(firstReleaseDate! * 1000);
  }

  String? get thumb {
    return cover?.fullUrl?.replaceFirst("thumb", "thumb_2x");
  }

  String? get coverSmall {
    return cover?.fullUrl?.replaceFirst("thumb", "cover_small_2x");
  }

  String? get coverBig {
    return cover?.fullUrl?.replaceFirst("thumb", "cover_big_2x");
  }

  factory IgdbGame.fromJson(Map<String, dynamic> json) => IgdbGame(
    id: json["id"],
    cover: json["cover"] == null ? null : IgdbCover.fromJson(json["cover"]),
    firstReleaseDate: json["first_release_date"],
    gameModes: json["game_modes"] == null
        ? []
        : List<IgdbGameInfo>.from(
            json["game_modes"]!.map((x) => IgdbGameInfo.fromJson(x)),
          ),
    genres: json["genres"] == null
        ? []
        : List<IgdbGameInfo>.from(
            json["genres"]!.map((x) => IgdbGameInfo.fromJson(x)),
          ),
    name: json["name"],
    platforms: json["platforms"] == null
        ? []
        : List<IgdbGameInfo>.from(
            json["platforms"]!.map((x) => IgdbGameInfo.fromJson(x)),
          ),
    summary: json["summary"],
    themes: json["themes"] == null
        ? []
        : List<IgdbGameInfo>.from(
            json["themes"]!.map((x) => IgdbGameInfo.fromJson(x)),
          ),
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

@embedded
class IgdbCover {
  final int? id;
  final String? url;

  String? get fullUrl {
    if (url == null) {
      return null;
    }
    return "https:$url";
  }

  IgdbCover({this.id, this.url});

  factory IgdbCover.fromJson(Map<String, dynamic> json) =>
      IgdbCover(id: json["id"], url: json["url"]);

  Map<String, dynamic> toJson() => {"id": id, "url": url};
}

@embedded
class IgdbGameInfo {
  final int? id;
  final String? name;

  IgdbGameInfo({this.id, this.name});

  factory IgdbGameInfo.fromJson(Map<String, dynamic> json) =>
      IgdbGameInfo(id: json["id"], name: json["name"]);

  Map<String, dynamic> toJson() => {"id": id, "name": name};
}

@embedded
class GameType {
  final int? id;
  final String? type;

  GameType({this.id, this.type});

  factory GameType.fromJson(Map<String, dynamic> json) =>
      GameType(id: json["id"], type: json["type"]);

  Map<String, dynamic> toJson() => {"id": id, "type": type};
}
