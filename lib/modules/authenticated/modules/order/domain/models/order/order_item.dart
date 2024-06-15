import 'dart:convert';

import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/product_model.dart';

class OrderItem {
  final Product product;
  int quantity;

  OrderItem({
    required this.product,
    required this.quantity,
  });

  factory OrderItem.fromMap(Map<String, dynamic> map) {
    return OrderItem(
      product: Product.fromMap(map['product']),
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'product': product.toMap(),
      'quantity': quantity,
    };
  }

  factory OrderItem.fromJson(String source) =>
      OrderItem.fromMap(json.decode(source));

  String toJson() => json.encode(toMap());

  //Store Data To Local Storage
  Map<String, dynamic> toMapLocal(int orderId) {
    return {
      'id_order': orderId,
      'id_product': product.id,
      'quantity': quantity,
      'price': product.price,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderItem &&
        other.product == product &&
        other.quantity == quantity;
  }

  @override
  int get hashCode => product.hashCode ^ quantity.hashCode;
}
