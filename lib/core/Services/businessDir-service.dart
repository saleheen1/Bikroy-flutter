import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/businessDir-Model.dart';
import 'package:http/http.dart' as http;

class BusinessDir_Service {
  Api api = Api();
  //fetch Category
  Future<BusinessDirModel> fetchCategory() async {
    var response = await http.get(Uri.parse(api.businessDirApi));

    var jsonData = jsonDecode(response.body);
    return BusinessDirModel.fromJson(jsonData);
  }
}
