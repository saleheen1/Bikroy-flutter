import 'dart:convert';

import 'package:bikroy/app/constants/api.dart';
import 'package:bikroy/core/Controllers/login-controller.dart';
import 'package:bikroy/core/Models/login-Model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Home/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  Api api = Api();

  Future submitData(String email, String password, BuildContext context) async {
    var response = await http.post(
        Uri.https(api.authorityApi, api.loginUnencodedPathApi),
        body: {"email": email, "password": password});

    //if login success
    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = response.body;

      Provider.of<LoginController>(context, listen: false).makeLoadingFalse();

      var jsonData = jsonDecode(data);
      var finalData = LoginModel.fromJson(jsonData);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LandingPage()));
      Helper().flutterToast("Login Successfull", Colors.green);

      //save user
      saveUser(true);

      return finalData;
    }
    //Login failed
    else {
      Provider.of<LoginController>(context, listen: false).makeLoadingFalse();
      Helper().flutterToast("Invalid credential", Colors.red);

      //unsave user
      // saveUser(false);
    }
  }

  //save user in device if logged in successfully
  void saveUser(bool result) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('userSaved', result);
  }
}
