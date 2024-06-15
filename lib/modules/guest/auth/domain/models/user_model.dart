import 'dart:convert';

class User {
  final int? id;
  final String? name;
  final String? email;
  final DateTime? emailVerifiedAt;
  final dynamic twoFactorSecret;
  final dynamic twoFactorRecoveryCodes;
  final dynamic twoFactorConfirmedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic phone;
  final String? roles;

  const User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.twoFactorSecret,
    this.twoFactorRecoveryCodes,
    this.twoFactorConfirmedAt,
    this.createdAt,
    this.updatedAt,
    this.phone,
    this.roles,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) {
    final emailVerifiedAt = json["email_verified_at"];
    final createdAt = json["created_at"];
    final updatedAt = json["updated_at"];
    return User(
      id: json["id"],
      name: json["name"],
      email: json["email"],
      emailVerifiedAt:
          emailVerifiedAt == null ? null : DateTime.parse(emailVerifiedAt),
      twoFactorSecret: json["two_factor_secret"],
      twoFactorRecoveryCodes: json["two_factor_recovery_codes"],
      twoFactorConfirmedAt: json["two_factor_confirmed_at"],
      createdAt: createdAt == null ? null : DateTime.parse(createdAt),
      updatedAt: updatedAt == null ? updatedAt : DateTime.parse(updatedAt),
      phone: json["phone"],
      roles: json["role"],
    );
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt?.toIso8601String(),
        "two_factor_secret": twoFactorSecret,
        "two_factor_recovery_codes": twoFactorRecoveryCodes,
        "two_factor_confirmed_at": twoFactorConfirmedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "phone": phone,
        "role": roles,
      };
}