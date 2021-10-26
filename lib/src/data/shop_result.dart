import 'dart:convert';

ShopResult shopResultFromJson(String str) => ShopResult.fromJson(json.decode(str));

String shopResultToJson(ShopResult data) => json.encode(data.toJson());

class ShopResult {
  ShopResult({
    required this.shops,
  });

  List<Shop> shops;

  factory ShopResult.fromJson(Map<String, dynamic> json) => ShopResult(
    shops: List<Shop>.from(json['shops'].map((x) => Shop.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "shops": List<dynamic>.from(shops.map((x) => x.toJson())),
  };
}

class Shop {
  Shop({
    required this.id,
    required this.uid,
    required this.title,
    required this.info,
    required this.phone,
    required this.isParking,
  });

  int id;
  String uid;
  String title;
  String info;
  String phone;
  bool isParking;

  factory Shop.fromJson(Map<String, dynamic> json) => Shop(
    id: json["id"],
    uid: json["uid"],
    title: json["title"],
    info: json["info"],
    phone: json["phone"],
    isParking: json["isParking"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "title": title,
    "info": info,
    "phone": phone,
    "isParking": isParking,
  };
}
