import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/categoryModel.dart';
import 'package:http/http.dart' as http;

class CategoryService {
  Api api = Api();
  //fetch Category
  Future<CategoryModel> fetchCategory() async {
    var response = await http.get(Uri.parse(api.categoryApi));

    var jsonData = jsonDecode(response.body);
    return CategoryModel.fromJson(jsonData);
  }
}
