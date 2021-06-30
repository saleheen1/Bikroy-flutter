import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Controllers/register-controller.dart';
import 'package:bikroy/core/Models/Register-model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Authentications/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class RegisterService {
  Api api = Api();

  Future submitData(String name, String mobile, String password, String email,
      String type, BuildContext context) async {
    //after sending this to the server we will get some data returned
    var response = await http
        .post(Uri.https(api.authorityApi, api.registerUnencodedPathApi), body: {
      "name": name,
      "mobile": mobile,
      "password": password,
      "email": email,
      "type": type
    });

    if (response.statusCode == 200 || response.statusCode == 201) {
      // var data = response.body;
      // print("The data isssss: $data");

      // var jsonData = jsonDecode(data);
      // var finalData = RegisterModel.fromJson(jsonData);

      Provider.of<RegisterController>(context, listen: false)
          .makeLoadingFalse();
      Helper()
          .flutterToast("Registration Successful, Please login", Colors.green);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));

      // return finalData;
    } else {
      Provider.of<RegisterController>(context, listen: false)
          .makeLoadingFalse();
      Helper().flutterToast(
          "Email already exists or Invalid phone number", Colors.red);
    }
  }
}
