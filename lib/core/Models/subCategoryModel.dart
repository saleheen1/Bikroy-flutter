// To parse this JSON data, do
//
//     final subCategoryModel = subCategoryModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SubCategoryModel subCategoryModelFromJson(String str) =>
    SubCategoryModel.fromJson(json.decode(str));

String subCategoryModelToJson(SubCategoryModel data) =>
    json.encode(data.toJson());

class SubCategoryModel {
  SubCategoryModel({
    required this.allData,
    required this.category,
    required this.maxSerial,
  });

  AllData allData;
  Category category;
  int maxSerial;

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      SubCategoryModel(
        allData: AllData.fromJson(json["allData"]),
        category: Category.fromJson(json["category"]),
        maxSerial: json["max_serial"],
      );

  Map<String, dynamic> toJson() => {
        "allData": allData.toJson(),
        "category": category.toJson(),
        "max_serial": maxSerial,
      };
}

class AllData {
  AllData({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory AllData.fromJson(Map<String, dynamic> json) => AllData(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
      };
}

class Datum {
  Datum({
    required this.id,
    required this.subCategoryName,
    required this.fkCategoryId,
    required this.serialNum,
    required this.description,
    required this.status,
    required this.createdAt,
    this.updatedAt,
    required this.createdBy,
    this.updatedBy,
    required this.categoryName,
    required this.categoryId,
  });

  int id;
  String subCategoryName;
  int fkCategoryId;
  int serialNum;
  String description;
  int status;
  DateTime createdAt;
  DateTime? updatedAt;
  int createdBy;
  int? updatedBy;
  String categoryName;
  int categoryId;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        subCategoryName: json["sub_category_name"],
        fkCategoryId: json["fk_category_id"],
        serialNum: json["serial_num"],
        description: json["description"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        categoryName: json["category_name"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sub_category_name": subCategoryName,
        "fk_category_id": fkCategoryId,
        "serial_num": serialNum,
        "description": description,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "created_by": createdBy,
        "updated_by": updatedBy,
        "category_name": categoryName,
        "category_id": categoryId,
      };
}

class Category {
  Category({
    required this.id,
    required this.name,
    required this.serialNum,
    required this.description,
    required this.shortDescription,
    required this.link,
    required this.iconPhoto,
    required this.iconClass,
    required this.createdBy,
    required this.updatedBy,
    required this.status,
    required this.type,
    required this.postType,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  int serialNum;
  String description;
  String shortDescription;
  String link;
  dynamic iconPhoto;
  String iconClass;
  int createdBy;
  int updatedBy;
  int status;
  int type;
  int postType;
  DateTime createdAt;
  DateTime updatedAt;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        serialNum: json["serial_num"],
        description: json["description"],
        shortDescription: json["short_description"],
        link: json["link"],
        iconPhoto: json["icon_photo"],
        iconClass: json["icon_class"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        status: json["status"],
        type: json["type"],
        postType: json["post_type"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "serial_num": serialNum,
        "description": description,
        "short_description": shortDescription,
        "link": link,
        "icon_photo": iconPhoto,
        "icon_class": iconClass,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "status": status,
        "type": type,
        "post_type": postType,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
