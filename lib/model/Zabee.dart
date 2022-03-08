// To parse this JSON data, do
//
//     final zabeeModel = zabeeModelFromJson(jsonString);

import 'dart:convert';

List<ZabeeModel> zabeeModelFromJson(String str) =>
    List<ZabeeModel>.from(json.decode(str).map((x) => ZabeeModel.fromJson(x)));

String zabeeModelToJson(List<ZabeeModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ZabeeModel {
  ZabeeModel({
    required this.productName,
    required this.productId,
    required this.productImage,
    required this.isLocal,
    required this.sellerProductId,
    required this.pvId,
    required this.rating,
    required this.price,
    this.discountValue,
    this.discountType,
    this.discountStart,
    this.discountEnd,
    required this.sellerId,
  });

  String productName;
  String productId;
  String productImage;
  String isLocal;
  String sellerProductId;
  String pvId;
  String rating;
  String price;
  dynamic discountValue;
  dynamic discountType;
  dynamic discountStart;
  dynamic discountEnd;
  String sellerId;

  factory ZabeeModel.fromJson(Map<String, dynamic> json) => ZabeeModel(
        productName: json["product_name"],
        productId: json["product_id"],
        productImage: json["product_image"],
        isLocal: json["is_local"],
        sellerProductId: json["seller_product_id"],
        pvId: json["pv_id"],
        rating: json["rating"],
        price: json["price"],
        discountValue: json["discount_value"],
        discountType: json["discount_type"],
        discountStart: json["discount_start"],
        discountEnd: json["discount_end"],
        sellerId: json["seller_id"],
      );

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "product_id": productId,
        "product_image": productImage,
        "is_local": isLocal,
        "seller_product_id": sellerProductId,
        "pv_id": pvId,
        "rating": rating,
        "price": price,
        "discount_value": discountValue,
        "discount_type": discountType,
        "discount_start": discountStart,
        "discount_end": discountEnd,
        "seller_id": sellerId,
      };
}
