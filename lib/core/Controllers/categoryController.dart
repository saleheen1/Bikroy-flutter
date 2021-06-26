import 'package:bikroy/core/Models/categoryModel.dart';
import 'package:bikroy/core/Services/categoryService.dart';

class CategoryController {
  bool categoryLoading = false;

  Future<CategoryModel> getCategoryData() async {
    CategoryModel categories = await CategoryService().fetchCategory();

    return categories;
  }
}
