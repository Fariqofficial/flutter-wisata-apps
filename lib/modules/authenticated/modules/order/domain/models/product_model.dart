import 'dart:convert';
import 'package:flutter_wisata_apps/modules/authenticated/modules/order/domain/models/category_model.dart';

class Product {
  final int? id;
  final String? name;
  final String? description;
  final int? price;
  final int? stock;
  final int? categoryId;
  final String? image;
  final String? status;
  final dynamic deletedAt;
  final String? criteria;
  final int? favorite;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Category? category;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stock,
    this.categoryId,
    this.image,
    this.status,
    this.deletedAt,
    this.criteria,
    this.favorite,
    this.createdAt,
    this.updatedAt,
    this.category,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        categoryId: json["category_id"],
        image: json["image"],
        status: json["status"],
        deletedAt: json["deleted_at"],
        criteria: json["criteria"],
        favorite: json["favorite"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        category: json["category"] == null
            ? null
            : Category.fromMap(json["category"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "category_id": categoryId,
        "image": image,
        "status": status,
        "deleted_at": deletedAt,
        "criteria": criteria,
        "favorite": favorite,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "category": category?.toMap(),
      };

  //Get Data From Local Storage
  factory Product.fromLocalMap(Map<String, dynamic> json) => Product(
        id: json["productId"],
        categoryId: json["category_id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"] is String
            ? int.tryParse(json["price"])
            : json["price"],
        stock: json["stock"],
        status: json["status"],
        favorite: json["is_favorite"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        criteria: json["criteria"],
        category: json["category"] == null
            ? null
            : Category.fromMap(json["category"]),
      );

  //Store Data To Local Storage
  Map<String, dynamic> toLocalMap() => {
        "productId": id,
        "category_id": categoryId,
        "name": name,
        "description": description,
        "image": image,
        "price": price,
        "stock": stock,
        "status": status,
        "is_favorite": favorite,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "criteria": criteria,
      };

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.stock == stock &&
        other.categoryId == categoryId &&
        other.image == image &&
        other.status == status &&
        other.criteria == criteria &&
        other.favorite == favorite &&
        other.deletedAt == deletedAt &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        stock.hashCode ^
        categoryId.hashCode ^
        image.hashCode ^
        status.hashCode ^
        criteria.hashCode ^
        favorite.hashCode ^
        deletedAt.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        category.hashCode;
  }

  Product copyWith({
    int? id,
    String? name,
    String? description,
    int? price,
    int? stock,
    int? categoryId,
    String? image,
    String? status,
    String? criteria,
    int? favorite,
    dynamic deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    Category? category,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      stock: stock ?? this.stock,
      categoryId: categoryId ?? this.categoryId,
      image: image ?? this.image,
      status: status ?? this.status,
      criteria: criteria ?? this.criteria,
      favorite: favorite ?? this.favorite,
      deletedAt: deletedAt ?? this.deletedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      category: category ?? this.category,
    );
  }
}
