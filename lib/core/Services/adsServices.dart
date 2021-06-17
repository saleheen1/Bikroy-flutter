import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/ads_Model.dart';
import 'package:http/http.dart' as http;

class AdsServices {
  Api api = Api();
  //fetch Category
  Future<AdsModel> fetchAds() async {
    var response = await http.get(Uri.parse(api.adsApi));

    var jsonData = jsonDecode(response.body);
    return AdsModel.fromJson(jsonData);
  }
}
