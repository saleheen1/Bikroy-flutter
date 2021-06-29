// To parse this JSON data, do
//
//     final shopDetailsModel = shopDetailsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ShopDetailsModel shopDetailsModelFromJson(String str) =>
    ShopDetailsModel.fromJson(json.decode(str));

String shopDetailsModelToJson(ShopDetailsModel data) =>
    json.encode(data.toJson());

class ShopDetailsModel {
  ShopDetailsModel({
    required this.msg,
    required this.status,
    required this.data,
  });

  String msg;
  bool status;
  Data data;

  factory ShopDetailsModel.fromJson(Map<String, dynamic> json) =>
      ShopDetailsModel(
        msg: json["msg"],
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "status": status,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.title,
    required this.location,
    required this.website,
    required this.openHour,
    required this.closedDay,
    required this.coverPhoto,
    required this.profilePhoto,
    required this.link,
    required this.description,
    required this.services,
    required this.contactEmail,
    required this.contactPhone,
    required this.status,
    required this.fkSubCategoryId,
    required this.isApproved,
    required this.approvedBy,
    required this.fkUserId,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.subCategoryName,
  });

  int id;
  String title;
  String location;
  String website;
  String openHour;
  String closedDay;
  String coverPhoto;
  String profilePhoto;
  String link;
  String description;
  String services;
  String contactEmail;
  String contactPhone;
  int status;
  int fkSubCategoryId;
  int isApproved;
  int approvedBy;
  int fkUserId;
  DateTime createdAt;
  DateTime updatedAt;
  String name;
  String subCategoryName;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"],
        location: json["location"],
        website: json["website"],
        openHour: json["open_hour"],
        closedDay: json["closed_day"],
        coverPhoto: json["cover_photo"],
        profilePhoto: json["profile_photo"],
        link: json["link"],
        description: json["description"],
        services: json["services"],
        contactEmail: json["contact_email"],
        contactPhone: json["contact_phone"],
        status: json["status"],
        fkSubCategoryId: json["fk_sub_category_id"],
        isApproved: json["is_approved"],
        approvedBy: json["approved_by"],
        fkUserId: json["fk_user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        name: json["name"],
        subCategoryName: json["sub_category_name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "location": location,
        "website": website,
        "open_hour": openHour,
        "closed_day": closedDay,
        "cover_photo": coverPhoto,
        "profile_photo": profilePhoto,
        "link": link,
        "description": description,
        "services": services,
        "contact_email": contactEmail,
        "contact_phone": contactPhone,
        "status": status,
        "fk_sub_category_id": fkSubCategoryId,
        "is_approved": isApproved,
        "approved_by": approvedBy,
        "fk_user_id": fkUserId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "name": name,
        "sub_category_name": subCategoryName,
      };
}
