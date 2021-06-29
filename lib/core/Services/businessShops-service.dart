import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/businessShops-Model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../helper.dart';

class BusinessShopsService {
  Api api = Api();

  Future fetchBusinessShops(int subCategoryId) async {
    var response = await http.post(Uri.parse(api.businessDirShopsApi),
        body: {"subCategory_id": subCategoryId.toString()});

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = response.body;
      var jsonData = jsonDecode(data);
      var finalData = BusinessShopsModel.fromJson(jsonData);
      return finalData;
    } else {
      return null;
    }
  }
}
