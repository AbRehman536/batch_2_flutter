// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  final String? docId;
  final String? productName;
  final String? productImage;
  final String? productDesc;
  final String? productDetails;
  final double? productPrice;
  final String? productNutrition;
  final bool? productStock;
  final int? createdAt;

  ProductModel({
    this.docId,
    this.productName,
    this.productImage,
    this.productDesc,
    this.productDetails,
    this.productPrice,
    this.productNutrition,
    this.productStock,
    this.createdAt,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    docId: json["docID"],
    productName: json["productName"],
    productImage: json["productImage"],
    productDesc: json["productDesc"],
    productDetails: json["productDetails"],
    productPrice: json["productPrice"]?.toDouble(),
    productNutrition: json["productNutrition"],
    productStock: json["productStock"],
    createdAt: json["createdAT"],
  );

  Map<String, dynamic> toJson() => {
    "docID": docId,
    "productName": productName,
    "productImage": productImage,
    "productDesc": productDesc,
    "productDetails": productDetails,
    "productPrice": productPrice,
    "productNutrition": productNutrition,
    "productStock": productStock,
    "createdAT": createdAt,
  };
}
