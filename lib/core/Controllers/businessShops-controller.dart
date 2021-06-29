import 'package:bikroy/core/Models/businessShops-Model.dart';
import 'package:bikroy/core/Services/businessShops-service.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';

class BusinessShopsController {
  Future<BusinessShopsModel> getBusinessShops(int subCategoryId) async {
    var data = await BusinessShopsService().fetchBusinessShops(subCategoryId);
    if (data == null) {
      Helper().flutterToast(
          "Some Null data was returned from database", Colors.red);
    }
    return data;
  }
}
