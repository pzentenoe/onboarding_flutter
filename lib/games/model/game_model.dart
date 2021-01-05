import 'dart:convert';

GameModel gameModelFromJson(String str) => GameModel.fromJson(json.decode(str));

String gameModelToJson(GameModel data) => json.encode(data.toJson());

class GameModel {
  GameModel({
    this.id,
    this.title,
    this.price,
    this.imageUrl,
    this.year,
  });

  String id;
  String title;
  int price;
  String imageUrl;
  int year;

  factory GameModel.fromJson(Map<String, dynamic> json) => GameModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        imageUrl: json["image_url"],
        year: json["year"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "image_url": imageUrl,
        "year": year,
      };
}
