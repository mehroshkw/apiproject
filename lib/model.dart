

import 'dart:convert';

QRcode qRcodeFromJson(String str) => QRcode.fromJson(json.decode(str));

String qRcodeToJson(QRcode data) => json.encode(data.toJson());

class QRcode {
  QRcode({
    this.status,
    this.data,
  });

  String? status;
  Data? data;

  factory QRcode.fromJson(Map<String, dynamic> json) => QRcode(
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data!.toJson(),
      };
}

class Data {
  Data({
    this.productId,
    this.barcode,
    this.pages,
    this.title,
    this.description,
    this.slug,
    this.sku,
    this.image,
    this.price,
    this.salePrice,
    this.instock,
    this.usedPrice,
    this.ocrCode,
  });

  int? productId;
  String? barcode;
  String? pages;
  String? title;
  String? description;
  String? slug;
  String? sku;
  dynamic? image;
  int? price;
  int? salePrice;
  String? instock;
  String? usedPrice;
  String? ocrCode;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        productId: json["product_id"],
        barcode: json["barcode"],
        pages: json["pages"],
        title: json["title"],
        description: json["description"],
        slug: json["slug"],
        sku: json["sku"],
        image: json["image"],
        price: json["price"],
        salePrice: json["sale_price"],
        instock: json["instock"],
        usedPrice: json["used_price"],
        ocrCode: json["ocr_code"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "barcode": barcode,
        "pages": pages,
        "title": title,
        "description": description,
        "slug": slug,
        "sku": sku,
        "image": image,
        "price": price,
        "sale_price": salePrice,
        "instock": instock,
        "used_price": usedPrice,
        "ocr_code": ocrCode,
      };
}
