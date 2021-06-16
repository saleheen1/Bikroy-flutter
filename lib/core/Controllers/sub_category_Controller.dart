import 'package:bikroy/core/Models/categoryModel.dart';
import 'package:bikroy/core/Models/subCategoryModel.dart';
import 'package:bikroy/core/Services/categoryService.dart';
import 'package:bikroy/core/Services/sub_category_Services.dart';

class SubCategoryController {
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

}
