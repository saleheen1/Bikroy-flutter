import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/businessShops-Model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../helper.dart';

class BusinessShopsService with ChangeNotifier {
  Api api = Api();

  var _finalData;
  bool _error = false;
  String _errorMessage = '';

  get finalData => _finalData;
  bool get error => _error;
  String get errorMessage => _errorMessage;

  Future fetchBusinessShops(int subCategoryId) async {
    var response = await http.post(Uri.parse(api.businessDirShopsApi),
        body: {"subCategory_id": subCategoryId.toString()});

    if (response.statusCode == 200 || response.statusCode == 201) {
      try {
        var data = response.body;
        var jsonData = jsonDecode(data);
        _finalData = BusinessShopsModel.fromJson(jsonData);
      } catch (e) {
        _errorMessage = e.toString();
      }
    } else {
      _error = true;
    }
    notifyListeners();
  }

  void initialValues() {
    _finalData = "";
    _error = false;
    _errorMessage = "";
    notifyListeners();
  }
}
