import 'package:flutter/material.dart';

import 'dart:convert';

List<Music> musicFromJson(String str) =>
    List<Music>.from(json.decode(str).map((x) => Music.fromJson(x)));

String musicToJson(List<Music> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Music {
  Music({
    required this.userId,
    required this.id,
    required this.title,
  });

  int userId;
  int id;
  String title;

  factory Music.fromJson(Map<String, dynamic> json) => Music(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
