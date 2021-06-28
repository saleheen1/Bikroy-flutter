import 'package:bikroy/core/Models/businessDir-Model.dart';
import 'package:bikroy/core/Services/businessDir-service.dart';

class BusinessDirController {
  bool categoryLoading = false;

  Future<BusinessDirModel> getCategoryData() async {
    BusinessDirModel categories = await BusinessDir_Service().fetchCategory();

    return categories;
  }
}
