import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Models/login-Model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Home/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginService {
  Api api = Api();

  Future submitData(String email, String password, BuildContext context) async {
    var response = await http.post(
        Uri.https(api.authorityApi, api.loginUnencodedPathApi),
        body: {"email": email, "password": password});

    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = response.body;

      var jsonData = jsonDecode(data);
      var finalData = LoginModel.fromJson(jsonData);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
      return finalData;
    } else {
      Helper().flutterToast("Invalid credential", Colors.red);
    }
  }
}
