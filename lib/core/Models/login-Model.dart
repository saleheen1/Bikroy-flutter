// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.status,
    required this.token,
    required this.msg,
    required this.data,
  });

  bool status;
  String token;
  String msg;
  Data data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        token: json["token"],
        msg: json["msg"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "token": token,
        "msg": msg,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.type,
    required this.status,
    required this.email,
    required this.mobile,
    required this.mobileVerified,
    required this.emailVerified,
    this.verifyToken,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  int type;
  int status;
  String email;
  String mobile;
  int mobileVerified;
  int emailVerified;
  dynamic verifyToken;
  DateTime createdAt;
  DateTime updatedAt;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        status: json["status"],
        email: json["email"],
        mobile: json["mobile"],
        mobileVerified: json["mobile_verified"],
        emailVerified: json["email_verified"],
        verifyToken: json["verifyToken"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "status": status,
        "email": email,
        "mobile": mobile,
        "mobile_verified": mobileVerified,
        "email_verified": emailVerified,
        "verifyToken": verifyToken,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
