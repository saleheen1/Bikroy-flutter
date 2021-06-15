// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) =>
    CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    required this.maxSerial,
    required this.data,
  });

  int maxSerial;
  Data data;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        maxSerial: json["max_serial"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "max_serial": maxSerial,
        "data": data.toJson(),
      };
}

class Data {
  Data({
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
  String nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
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
