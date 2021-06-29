import 'dart:convert';
import 'package:bikroy/app/constants/api.dart';
import 'package:http/http.dart' as http;

import 'package:bikroy/core/Models/subBusinessDir-Model.dart';

class SubBusinessDirService {
  Api api = Api();

  Future<SubBusinessDirModel> fetchCategory(var id) async {
    var response = await http.get(Uri.parse(api.subBusinessDirApi + '$id'));

    var jsonData = jsonDecode(response.body);
    return SubBusinessDirModel.fromJson(jsonData);
  }
}
