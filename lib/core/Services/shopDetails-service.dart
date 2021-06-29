import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/shopDetails-Model.dart';
import 'package:http/http.dart' as http;

class ShopDetailsService {
  Api api = Api();
  Future fetchShopDetails(String link) async {
    var response =
        await http.post(Uri.parse(api.shopDetailsApi), body: {"link": link});

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = response.body;
      var jsonData = jsonDecode(data);
      var finalData = ShopDetailsModel.fromJson(jsonData);
      return finalData;
    } else {
      return null;
    }
  }
}
