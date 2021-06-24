// import 'dart:convert';

// import 'package:bikroy/app/constants/api.dart';
// import 'package:bikroy/core/Models/ads_Model.dart';
// import 'package:http/http.dart' as http;

// class AdsByCategoryService {
//   Api api = Api();
//   //fetch Category
//   Future<SubCategoryModel> fetchCategory(var id) async {
//     var response = await http.get(Uri.parse('${api.adsApi}$id'));

//     var jsonData = jsonDecode(response.body);
//     return SubCategoryModel.fromJson(jsonData);
//   }
// }`