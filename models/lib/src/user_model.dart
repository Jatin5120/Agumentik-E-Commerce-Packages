import 'dart:convert';
import 'package:constants/constants.dart';
import 'package:flutter/foundation.dart';

import '../models.dart';

class UserModel {
  final bool isSeller;
  final String userID;
  final String? selledID;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String phoneNo;
  final String emailId;
  final String password;
  final Gender gender;
  final List<ProductModel> wishlist;
  final List<CartModal> cart;
  final List<AddressModel> addresses;
  final String? defaultAddressId;
  final String? imageUrl;
  final int createdAt;
  final int? updatedAt;
  final int? deletedAt;

  const UserModel({
    required this.isSeller,
    required this.userID,
    this.selledID,
    required this.firstName,
    this.middleName,
    required this.lastName,
    required this.phoneNo,
    required this.emailId,
    required this.password,
    required this.gender,
    required this.wishlist,
    required this.cart,
    required this.addresses,
    this.defaultAddressId,
    this.imageUrl,
    required this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  UserModel copyWith({
    bool? isSeller,
    String? userID,
    String? selledID,
    String? firstName,
    String? middleName,
    String? lastName,
    String? phoneNo,
    String? emailId,
    String? password,
    Gender? gender,
    List<ProductModel>? wishlist,
    List<CartModal>? cart,
    List<AddressModel>? addresses,
    String? defaultAddressId,
    String? imageUrl,
    int? createdAt,
    int? updatedAt,
    int? deletedAt,
  }) {
    return UserModel(
      isSeller: isSeller ?? this.isSeller,
      userID: userID ?? this.userID,
      selledID: selledID ?? this.selledID,
      firstName: firstName ?? this.firstName,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      phoneNo: phoneNo ?? this.phoneNo,
      emailId: emailId ?? this.emailId,
      password: password ?? this.password,
      gender: gender ?? this.gender,
      wishlist: wishlist ?? this.wishlist,
      cart: cart ?? this.cart,
      addresses: addresses ?? this.addresses,
      defaultAddressId: defaultAddressId ?? this.defaultAddressId,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'isSeller': isSeller,
      'userID': userID,
      'selledID': selledID,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'phoneNo': phoneNo,
      'emailId': emailId,
      'password': password,
      'gender': gender.text,
      'wishlist': wishlist.map((x) => x.toMap()).toList(),
      'cart': cart.map((x) => x.toMap()).toList(),
      'addresses': addresses.map((x) => x.toMap()).toList(),
      'defaultAddressId': defaultAddressId,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'deletedAt': deletedAt,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      isSeller: map['isSeller'] ?? false,
      userID: map['userID'] ?? '',
      selledID: map['selledID'],
      firstName: map['firstName'] ?? '',
      middleName: map['middleName'],
      lastName: map['lastName'] ?? '',
      phoneNo: map['phoneNo'] ?? '',
      emailId: map['emailId'] ?? '',
      password: map['password'] ?? '',
      gender: (map['gender'] as String).genderType,
      wishlist: List<ProductModel>.from(map['wishlist']?.map((x) => ProductModel.fromMap(x))),
      cart: List<CartModal>.from(map['cart']?.map((x) => CartModal.fromMap(x))),
      addresses: List<AddressModel>.from(map['addresses']?.map((x) => AddressModel.fromMap(x))),
      defaultAddressId: map['defaultAddressId'],
      imageUrl: map['imageUrl'],
      createdAt: map['createdAt']?.toInt() ?? 0,
      updatedAt: map['updatedAt']?.toInt(),
      deletedAt: map['deletedAt']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(isSeller: $isSeller, userID: $userID, selledID: $selledID, firstName: $firstName, middleName: $middleName, lastName: $lastName, phoneNo: $phoneNo, emailId: $emailId, password: $password, gender: $gender, wishlist: $wishlist, cart: $cart, addresses: $addresses, defaultAddressId: $defaultAddressId, imageUrl: $imageUrl, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.isSeller == isSeller &&
        other.userID == userID &&
        other.selledID == selledID &&
        other.firstName == firstName &&
        other.middleName == middleName &&
        other.lastName == lastName &&
        other.phoneNo == phoneNo &&
        other.emailId == emailId &&
        other.password == password &&
        other.gender == gender &&
        listEquals(other.wishlist, wishlist) &&
        listEquals(other.cart, cart) &&
        listEquals(other.addresses, addresses) &&
        other.defaultAddressId == defaultAddressId &&
        other.imageUrl == imageUrl &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.deletedAt == deletedAt;
  }

  @override
  int get hashCode {
    return isSeller.hashCode ^
        userID.hashCode ^
        selledID.hashCode ^
        firstName.hashCode ^
        middleName.hashCode ^
        lastName.hashCode ^
        phoneNo.hashCode ^
        emailId.hashCode ^
        password.hashCode ^
        gender.hashCode ^
        wishlist.hashCode ^
        cart.hashCode ^
        addresses.hashCode ^
        defaultAddressId.hashCode ^
        imageUrl.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        deletedAt.hashCode;
  }
}
