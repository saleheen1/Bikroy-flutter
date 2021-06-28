import 'dart:convert';

import 'package:bikroy/core/Models/login-Model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Future submitData(String email, String password) async {
    var response = await http.post(
        Uri.https("beta.tradebangla.com.bd", "api/auth/login"),
        body: {"email": email, "password": password});

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = response.body;
      print("The data is: $data");

      var jsonData = jsonDecode(data);
      var finalData = LoginModel.fromJson(jsonData);
      return finalData;
    } else {
      Helper().flutterToast("Invalid credential", Colors.red);
    }
  }
}
