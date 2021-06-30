// // To parse this JSON data, do
// //
// //     final registerModel = registerModelFromJson(jsonString);

// import 'package:meta/meta.dart';
// import 'dart:convert';

// RegisterModel registerModelFromJson(String str) =>
//     RegisterModel.fromJson(json.decode(str));

// String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

// class RegisterModel {
//   RegisterModel({
//     required this.msg,
//     required this.status,
//     required this.data,
//   });

//   String msg;
//   bool status;
//   Data data;

//   factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
//         msg: json["msg"],
//         status: json["status"],
//         data: Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "msg": msg,
//         "status": status,
//         "data": data.toJson(),
//       };
// }

// class Data {
//   Data({
//     required this.email,
//     required this.mobile,
//     required this.name,
//     required this.type,
//     required this.updatedAt,
//     required this.createdAt,
//     required this.id,
//   });

//   String email;
//   String mobile;
//   String name;
//   String type;
//   DateTime updatedAt;
//   DateTime createdAt;
//   int id;

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         email: json["email"],
//         mobile: json["mobile"],
//         name: json["name"],
//         type: json["type"],
//         updatedAt: DateTime.parse(json["updated_at"]),
//         createdAt: DateTime.parse(json["created_at"]),
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "email": email,
//         "mobile": mobile,
//         "name": name,
//         "type": type,
//         "updated_at": updatedAt.toIso8601String(),
//         "created_at": createdAt.toIso8601String(),
//         "id": id,
//       };
// }
