import 'dart:convert';

class Product {
  String? id;
  String? productName;
  List<String>? productImages;
  String? productDescription;
  int? productRating;
  int? productPrice;

  Product(
      {this.id,
      this.productName,
      this.productImages,
      this.productDescription,
      this.productRating,
      this.productPrice});

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
      id: json["id"],
      productName: json["productName"],
      productImages: json["productImages"],
      productDescription: json["productDescription"],
      productRating: json["productRating"],
      productPrice: json["productPrice"]);

  Map<String, dynamic> toMap() => {
        "id": id,
        "productName": productName,
        "productImages": productImages,
        "productDescription": productDescription,
        "productRating": productRating,
        "productPrice": productPrice
      };
}
