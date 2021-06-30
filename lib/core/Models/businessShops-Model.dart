// To parse this JSON data, do
//
//     final businessShopsModel = businessShopsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

BusinessShopsModel businessShopsModelFromJson(String str) =>
    BusinessShopsModel.fromJson(json.decode(str));

String businessShopsModelToJson(BusinessShopsModel data) =>
    json.encode(data.toJson());

class BusinessShopsModel {
  BusinessShopsModel({
    required this.msg,
    required this.status,
    required this.data,
  });

  String msg;
  bool status;
  Data data;

  factory BusinessShopsModel.fromJson(Map<String, dynamic> json) =>
      BusinessShopsModel(
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
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
    this.to,
    required this.total,
  });

  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int? from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  String? nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int? to;
  int total;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
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
        "links": List<dynamic>.from(links.map((x) => x.toJson())),
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
    required this.name,
    required this.title,
    required this.location,
    required this.link,
    required this.fkSubCategoryId,
  });

  String name;
  String title;
  String location;
  String link;
  int fkSubCategoryId;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        title: json["title"],
        location: json["location"],
        link: json["link"],
        fkSubCategoryId: json["fk_sub_category_id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "location": location,
        "link": link,
        "fk_sub_category_id": fkSubCategoryId,
      };
}

class Link {
  Link({
    this.url,
    required this.label,
    required this.active,
  });

  String? url;
  String label;
  bool active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
      };
}
