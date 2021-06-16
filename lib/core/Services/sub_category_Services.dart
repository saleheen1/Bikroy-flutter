import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/subCategoryModel.dart';
import 'package:http/http.dart' as http;

class SubCategoryServices {
  Api api = Api();

  // var categoryId;

  // get getCategoryId {
  //   return categoryId;
  // }

  // void setCategoryId(id) {
  //   this.categoryId = id;
  // }

//Show Subcategories
//   List<SubCategoryModel> parseOutWork(String responseBody) {
//     final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//     return parsed
//         .map<SubCategoryModel>((json) => SubCategoryModel.fromJson(json))
//         .toList();
//   }

//   //fetch Category
//   Future<List<SubCategoryModel>> fetchCategory() async {
//     // final queryParams = {
//     //   'id': categoryId.toString(),
//     // };
//     final response = await http.get(Uri.parse('${api.subCategoryApi}40'));

// //sending category id to fetch sub category
//     // final response =
//     // await http.get(Uri.parse('${api.subCategoryApi}?id=$categoryId'));

//     if (response.statusCode == 200) {
//       return parseOutWork(response.body);
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }

  Future<SubCategoryModel> fetchCategory(var id) async {
    var response = await http.get(Uri.parse('${api.subCategoryApi}$id'));

    var jsonData = jsonDecode(response.body);
    return SubCategoryModel.fromJson(jsonData);
  }
}
