import 'dart:convert';

class Orders {
  Orders({
    this.id,
    this.orderedDate,
    this.orderedProducts,
    this.totalPrice,
    this.status,
  });

  String? id;
  String? orderedDate;
  List<OrderedProduct>? orderedProducts;
  int? totalPrice;
  String? status;

  factory Orders.fromJson(String str) => Orders.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Orders.fromMap(Map<String, dynamic> json) => Orders(
        id: json["id"],
        orderedDate: json["orderedDate"],
        orderedProducts: List<OrderedProduct>.from(
            json["orderedProducts"].map((x) => OrderedProduct.fromMap(x))),
        totalPrice: json["totalPrice"],
        status: json["status"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "orderedDate": orderedDate,
        "orderedProducts":
            List<dynamic>.from(orderedProducts!.map((x) => x.toMap())),
        "totalPrice": totalPrice,
        "status": status,
      };
}

class OrderedProduct {
  OrderedProduct({
    this.productName,
    this.imageUrl,
    this.productQuantity,
    this.productPrice,
  });

  String? productName;
  String? imageUrl;
  int? productQuantity;
  int? productPrice;

  factory OrderedProduct.fromJson(String str) =>
      OrderedProduct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderedProduct.fromMap(Map<String, dynamic> json) => OrderedProduct(
        productName: json["productName"],
        imageUrl: json["imageUrl"],
        productQuantity: json["productQuantity"],
        productPrice: json["productPrice"],
      );

  Map<String, dynamic> toMap() => {
        "productName": productName,
        "imageUrl": imageUrl,
        "productQuantity": productQuantity,
        "productPrice": productPrice,
      };
}
