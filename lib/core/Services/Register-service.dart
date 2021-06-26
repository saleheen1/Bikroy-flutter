import 'dart:convert';

import 'package:bikroy/core/Models/Register-model.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  Future submitData(String name, String mobile, String password, String email,
      String type) async {
    //after sending this to the server we will get some data returned
    var response = await http
        .post(Uri.https('beta.tradebangla.com.bd', 'api/auth/register'), body: {
      "name": name,
      "mobile": mobile,
      "password": password,
      "email": email,
      "type": type
    });

    var data = response.body;
    print("The data isssss: $data");

    var jsonData = jsonDecode(data);
    var finalData = RegisterModel.fromJson(jsonData);
    return finalData;
  }
}
