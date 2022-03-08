// To parse this JSON data, do
//
//     final catalogeModel = catalogeModelFromJson(jsonString);

import 'dart:convert';

List<CatalogeModel> catalogeModelFromJson(String str) =>
    List<CatalogeModel>.from(
        json.decode(str).map((x) => CatalogeModel.fromJson(x)));

String catalogeModelToJson(List<CatalogeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatalogeModel {
  CatalogeModel({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory CatalogeModel.fromJson(Map<String, dynamic> json) => CatalogeModel(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
