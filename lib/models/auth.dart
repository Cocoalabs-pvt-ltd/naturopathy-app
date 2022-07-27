// To parse this JSON data, do
//
//     final auth = authFromMap(jsonString);

import 'dart:convert';

class Auth {
  Auth({
    this.email,
    this.password,
  });

  String? email;
  String? password;

  factory Auth.fromJson(String str) => Auth.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Auth.fromMap(Map<String, dynamic> json) => Auth(
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "email": email,
        "password": password,
      };
}
