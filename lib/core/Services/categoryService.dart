import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/categoryModel.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Api api = Api();
  //fetch Category
  late CategoryModel _categoryModel;
  Future<CategoryModel> fetchCategory() async {
    var response = await http.get(Uri.parse(api.categoryApi));

    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      _categoryModel = CategoryModel.fromJson(jsonData);
    }

    return _categoryModel;
  }
}
