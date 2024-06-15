import 'dart:convert';
import 'package:flutter_wisata_apps/modules/guest/auth/domain/models/user_model.dart';

class LoginResponseModel {
  final String? token;
  final User? user;

  const LoginResponseModel({
    this.token,
    this.user,
  });

  factory LoginResponseModel.fromJson(String str) =>
      LoginResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) =>
      LoginResponseModel(
        token: json["token"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "token": token,
        "user": user?.toMap(),
      };
}
