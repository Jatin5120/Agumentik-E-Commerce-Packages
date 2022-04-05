import 'dart:convert';

class CartModal {
  final String cartID;
  final String productID;
  final int quantity;

  const CartModal({
    required this.cartID,
    required this.productID,
    required this.quantity,
  });

  CartModal copyWith({
    String? cartID,
    String? productID,
    int? quantity,
  }) {
    return CartModal(
      cartID: cartID ?? this.cartID,
      productID: productID ?? this.productID,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cartID': cartID,
      'productID': productID,
      'quantity': quantity,
    };
  }

  factory CartModal.fromMap(Map<String, dynamic> map) {
    return CartModal(
      cartID: map['cartID'] ?? '',
      productID: map['productID'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModal.fromJson(String source) => CartModal.fromMap(json.decode(source));

  @override
  String toString() => 'CartModal(cartID: $cartID, productID: $productID, quantity: $quantity)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartModal && other.cartID == cartID && other.productID == productID && other.quantity == quantity;
  }

  @override
  int get hashCode => cartID.hashCode ^ productID.hashCode ^ quantity.hashCode;
}

// Demo data for our cart

List<CartModal> demoCarts = [
  // CartModal(product: demoProducts[0], quantity: 2),
  // CartModal(product: demoProducts[1], quantity: 1),
  // CartModal(product: demoProducts[3], quantity: 1),
];
