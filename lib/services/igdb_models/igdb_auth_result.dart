// To parse this JSON data, do
//
//     final igdbAuthResult = igdbAuthResultFromJson(jsonString);

import 'dart:convert';

IgdbAuthResult igdbAuthResultFromJson(String str) =>
    IgdbAuthResult.fromJson(json.decode(str));

String igdbAuthResultToJson(IgdbAuthResult data) => json.encode(data.toJson());

class IgdbAuthResult {
  final String accessToken;
  final int expiresIn;
  final String tokenType;
  final DateTime issued;

  IgdbAuthResult({
    required this.accessToken,
    required this.expiresIn,
    required this.tokenType,
    required this.issued,
  });

  factory IgdbAuthResult.fromJson(Map<String, dynamic> json) => IgdbAuthResult(
    accessToken: json["access_token"],
    expiresIn: json["expires_in"],
    tokenType: json["token_type"],
    issued: DateTime.timestamp(),
  );

  Map<String, dynamic> toJson() => {
    "access_token": accessToken,
    "expires_in": expiresIn,
    "token_type": tokenType,
  };

  bool get isTokenValid {
    return issued
        .add(Duration(seconds: expiresIn))
        .isAfter(DateTime.timestamp());
  }
}
