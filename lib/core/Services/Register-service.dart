import 'dart:convert';

import 'package:bikroy/core/Models/Register-model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';
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

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = response.body;
      print("The data isssss: $data");

      var jsonData = jsonDecode(data);
      var finalData = RegisterModel.fromJson(jsonData);
      return finalData;
    } else {
      Helper().flutterToast(
          "Email already exists or Invalid phone number", Colors.red);
    }
  }
}
