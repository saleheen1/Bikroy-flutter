import 'package:bikroy/core/Models/shopDetails-Model.dart';
import 'package:bikroy/core/Services/shopDetails-service.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';

class ShopDetailsController {
  Future<ShopDetailsModel> getShopDetails(String link) async {
    var data = await ShopDetailsService().fetchShopDetails(link);
    if (data == null) {
      Helper().flutterToast(
          "Some null data was returned from database", Colors.red);
    }
    return data;
  }
}
