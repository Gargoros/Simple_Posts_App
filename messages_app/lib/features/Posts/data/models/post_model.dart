// To parse this JSON data, do
//
//     final postModel = postModelFromJson(jsonString);

import 'dart:convert';

import 'package:messages_app/features/Posts/domain/entities/post_entity.dart';

class PostModel extends PostEntity {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const PostModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostModel.fromRawJson(String str) =>
      PostModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
