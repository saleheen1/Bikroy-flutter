// To parse this JSON data, do
//
//     final adsModel = adsModelFromJson(jsonString);

import 'dart:convert';

AdsModel adsModelFromJson(String str) => AdsModel.fromJson(json.decode(str));

String adsModelToJson(AdsModel data) => json.encode(data.toJson());

class AdsModel {
  AdsModel({
    this.adPost,
    this.productCategory,
    this.division,
    this.pageTitle,
    this.banners,
  });

  AdPost? adPost;
  List<ProductCategory>? productCategory;
  List<Division>? division;
  String? pageTitle;
  Map<String, Banner>? banners;

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
        adPost: AdPost.fromJson(json["adPost"]),
        productCategory: List<ProductCategory>.from(
            json["productCategory"].map((x) => ProductCategory.fromJson(x))),
        division: List<Division>.from(
            json["division"].map((x) => Division.fromJson(x))),
        pageTitle: json["page_title"],
        banners: Map.from(json["banners"])
            .map((k, v) => MapEntry<String, Banner>(k, Banner.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "adPost": adPost!.toJson(),
        "productCategory":
            List<dynamic>.from(productCategory!.map((x) => x.toJson())),
        "division": List<dynamic>.from(division!.map((x) => x.toJson())),
        "page_title": pageTitle,
        "banners": Map.from(banners!)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class AdPost {
  AdPost({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  int? currentPage;
  List<Datum>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  dynamic prevPageUrl;
  int? to;
  int? total;

  factory AdPost.fromJson(Map<String, dynamic> json) => AdPost(
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
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
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
    this.id,
    this.title = "no data",
    this.address = "no address",
    this.fkDivisionId,
    this.fkAreaId,
    this.type,
    this.condition,
    this.fkSubCategoryId,
    this.fkLastStepId,
    this.fkBrandId,
    this.price = 0,
    this.price2,
    this.isNegotiable,
    this.tag,
    this.link,
    this.description = "no desc available",
    this.status,
    this.isApproved,
    this.approvedBy,
    this.visitor,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.updatedBy,
    this.divisionName,
    this.areaName = "no area selected",
    this.subCategoryName,
    this.lastStepCategoryName,
    this.photoOne,
    this.catName,
    this.catLink,
    this.subId,
    this.lastId,
    this.creator = "poste by null",
  });

  int? id;
  String title;
  String address;
  int? fkDivisionId;
  int? fkAreaId;
  int? type;
  int? condition;
  int? fkSubCategoryId;
  int? fkLastStepId;
  int? fkBrandId;
  int price;
  dynamic price2;
  int? isNegotiable;
  String? tag;
  String? link;
  String description;
  int? status;
  int? isApproved;
  int? approvedBy;
  int? visitor;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? createdBy;
  dynamic updatedBy;
  DivisionName? divisionName;
  String areaName;
  String? subCategoryName;
  String? lastStepCategoryName;
  String? photoOne;
  String? catName;
  String? catLink;
  int? subId;
  int? lastId;
  String creator;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        address: json["address"],
        fkDivisionId: json["fk_division_id"],
        fkAreaId: json["fk_area_id"],
        type: json["type"],
        condition: json["condition"],
        fkSubCategoryId: json["fk_sub_category_id"],
        fkLastStepId:
            json["fk_last_step_id"] == null ? null : json["fk_last_step_id"],
        fkBrandId: json["fk_brand_id"] == null ? null : json["fk_brand_id"],
        price: json["price"],
        price2: json["price2"],
        isNegotiable: json["is_negotiable"],
        tag: json["tag"],
        link: json["link"],
        description: json["description"],
        status: json["status"],
        isApproved: json["is_approved"],
        approvedBy: json["approved_by"],
        visitor: json["visitor"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        divisionName: divisionNameValues.map![json["division_name"]],
        areaName: json["area_name"],
        subCategoryName: json["sub_category_name"],
        lastStepCategoryName: json["last_step_category_name"] == null
            ? null
            : json["last_step_category_name"],
        photoOne: json["photo_one"],
        catName: json["cat_name"],
        catLink: json["cat_link"],
        subId: json["sub_id"],
        lastId: json["last_id"] == null ? null : json["last_id"],
        creator: json["creator"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "address": address,
        "fk_division_id": fkDivisionId,
        "fk_area_id": fkAreaId,
        "type": type,
        "condition": condition,
        "fk_sub_category_id": fkSubCategoryId,
        "fk_last_step_id": fkLastStepId == null ? null : fkLastStepId,
        "fk_brand_id": fkBrandId == null ? null : fkBrandId,
        "price": price,
        "price2": price2,
        "is_negotiable": isNegotiable,
        "tag": tag,
        "link": link,
        "description": description,
        "status": status,
        "is_approved": isApproved,
        "approved_by": approvedBy,
        "visitor": visitor,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "created_by": createdBy,
        "updated_by": updatedBy,
        "division_name": divisionNameValues.reverse![divisionName],
        "area_name": areaName,
        "sub_category_name": subCategoryName,
        "last_step_category_name":
            lastStepCategoryName == null ? null : lastStepCategoryName,
        "photo_one": photoOne,
        "cat_name": catName,
        "cat_link": catLink,
        "sub_id": subId,
        "last_id": lastId == null ? null : lastId,
        "creator": creator,
      };
}

enum DivisionName { DHAKA, DHAKA_DIVISION, CHITTAGONG }

final divisionNameValues = EnumValues({
  "Chittagong": DivisionName.CHITTAGONG,
  "Dhaka": DivisionName.DHAKA,
  "Dhaka Division": DivisionName.DHAKA_DIVISION
});

class Banner {
  Banner({
    this.id,
    this.caption,
    this.link,
    this.photo,
    this.script,
    this.isPhoto,
    this.fkPageId,
    this.fkCategoryId,
    this.serialNum,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? caption;
  String? link;
  String? photo;
  String? script;
  int? isPhoto;
  int? fkPageId;
  int? fkCategoryId;
  int? serialNum;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        id: json["id"],
        caption: json["caption"],
        link: json["link"],
        photo: json["photo"],
        script: json["script"],
        isPhoto: json["is_photo"],
        fkPageId: json["fk_page_id"],
        fkCategoryId: json["fk_category_id"],
        serialNum: json["serial_num"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "caption": caption,
        "link": link,
        "photo": photo,
        "script": script,
        "is_photo": isPhoto,
        "fk_page_id": fkPageId,
        "fk_category_id": fkCategoryId,
        "serial_num": serialNum,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

class Division {
  Division({
    this.id,
    this.name,
    this.link,
    this.type,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.ad,
  });

  int? id;
  String? name;
  String? link;
  int? type;
  int? status;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? ad;

  factory Division.fromJson(Map<String, dynamic> json) => Division(
        id: json["id"],
        name: json["name"],
        link: json["link"],
        type: json["type"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        ad: json["ad"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "link": link,
        "type": type,
        "status": status,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "ad": ad,
      };
}

class ProductCategory {
  ProductCategory({
    this.id,
    this.name,
    this.iconPhoto,
    this.iconClass,
    this.link,
    this.ad,
  });

  int? id;
  String? name;
  dynamic iconPhoto;
  String? iconClass;
  String? link;
  int? ad;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      ProductCategory(
        id: json["id"],
        name: json["name"],
        iconPhoto: json["icon_photo"],
        iconClass: json["icon_class"],
        link: json["link"],
        ad: json["ad"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "icon_photo": iconPhoto,
        "icon_class": iconClass,
        "link": link,
        "ad": ad,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
