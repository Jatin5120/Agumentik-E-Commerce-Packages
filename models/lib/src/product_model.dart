import 'dart:convert';

import 'package:constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final String productID;
  final String selledId;
  final String title;
  final String description;
  final List<String> images;
  final List<Color> colors;
  final double price;
  final int totalSold;
  final double rating;
  final int totalReviews;
  final bool isFavourite;
  final bool isPopular;
  final DiscountType discountType;
  final double discount;
  final int createdAt;

  const ProductModel({
    required this.productID,
    required this.selledId,
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.price,
    required this.totalSold,
    this.rating = 0.0,
    required this.totalReviews,
    this.isFavourite = false,
    this.isPopular = false,
    this.discountType = DiscountType.none,
    required this.discount,
    required this.createdAt,
  });

  ProductModel copyWith({
    String? productID,
    String? selledId,
    String? title,
    String? description,
    List<String>? images,
    List<Color>? colors,
    double? price,
    int? totalSold,
    double? rating,
    int? totalReviews,
    bool? isFavourite,
    bool? isPopular,
    DiscountType? discountType,
    double? discount,
    int? createdAt,
  }) {
    return ProductModel(
      productID: productID ?? this.productID,
      selledId: selledId ?? this.selledId,
      title: title ?? this.title,
      description: description ?? this.description,
      images: images ?? this.images,
      colors: colors ?? this.colors,
      price: price ?? this.price,
      totalSold: totalSold ?? this.totalSold,
      rating: rating ?? this.rating,
      totalReviews: totalReviews ?? this.totalReviews,
      isFavourite: isFavourite ?? this.isFavourite,
      isPopular: isPopular ?? this.isPopular,
      discountType: discountType ?? this.discountType,
      discount: discount ?? this.discount,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productID': productID,
      'selledId': selledId,
      'title': title,
      'description': description,
      'images': images,
      'colors': colors.map((x) => x.value).toList(),
      'price': price,
      'totalSold': totalSold,
      'rating': rating,
      'totalReviews': totalReviews,
      'isFavourite': isFavourite,
      'isPopular': isPopular,
      'discountType': discountType.text,
      'discount': discount,
      'createdAt': createdAt,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productID: map['productID'] ?? '',
      selledId: map['selledId'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      colors: List<Color>.from(map['colors']?.map((x) => Color(x))),
      price: map['price']?.toDouble() ?? 0.0,
      totalSold: map['totalSold']?.toInt() ?? 0,
      rating: map['rating']?.toDouble() ?? 0.0,
      totalReviews: map['totalReviews']?.toInt() ?? 0,
      isFavourite: map['isFavourite'] ?? false,
      isPopular: map['isPopular'] ?? false,
      discountType: (map['discountType'] as String).discountType,
      discount: map['discount']?.toDouble() ?? 0.0,
      createdAt: map['createdAt']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(productID: $productID, selledId: $selledId, title: $title, description: $description, images: $images, colors: $colors, price: $price, totalSold: $totalSold, rating: $rating, totalReviews: $totalReviews, isFavourite: $isFavourite, isPopular: $isPopular, discountType: $discountType, discount: $discount, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.productID == productID &&
        other.selledId == selledId &&
        other.title == title &&
        other.description == description &&
        listEquals(other.images, images) &&
        listEquals(other.colors, colors) &&
        other.price == price &&
        other.totalSold == totalSold &&
        other.rating == rating &&
        other.totalReviews == totalReviews &&
        other.isFavourite == isFavourite &&
        other.isPopular == isPopular &&
        other.discountType == discountType &&
        other.discount == discount &&
        other.createdAt == createdAt;
  }

  @override
  int get hashCode {
    return productID.hashCode ^
        selledId.hashCode ^
        title.hashCode ^
        description.hashCode ^
        images.hashCode ^
        colors.hashCode ^
        price.hashCode ^
        totalSold.hashCode ^
        rating.hashCode ^
        totalReviews.hashCode ^
        isFavourite.hashCode ^
        isPopular.hashCode ^
        discountType.hashCode ^
        discount.hashCode ^
        createdAt.hashCode;
  }
}

// Our demo Products

List<ProductModel> kDemoProducts = [
  const ProductModel(
    productID: '1',
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S1',
    totalReviews: 500,
    createdAt: 0,
    totalSold: 789,
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  const ProductModel(
    productID: '2',
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S2',
    totalReviews: 500,
    createdAt: 0,
    totalSold: 789,
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  const ProductModel(
    productID: '3',
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S3',
    totalReviews: 500,
    createdAt: 0,
    totalSold: 789,
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  const ProductModel(
    productID: '4',
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    discount: 10,
    discountType: DiscountType.percent,
    selledId: 'S4',
    totalReviews: 500,
    createdAt: 0,
    totalSold: 789,
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
