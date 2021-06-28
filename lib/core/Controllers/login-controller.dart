import 'package:bikroy/core/Models/login-Model.dart';
import 'package:bikroy/core/Services/login-service.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Home/landingPage.dart';
import 'package:flutter/material.dart';

class LoginController {
  Future fetchData(String email, String password, BuildContext context) async {
    if (email.isEmpty) {
      Helper().flutterToast("Name field cannot be empty", Colors.red);
      return false;
    } else if (!email.contains("@")) {
      Helper().flutterToast("Invalid email", Colors.red);
      return false;
    } else if (password.isEmpty) {
      Helper().flutterToast("Password field cannot be empty", Colors.red);
      return false;
    } else if (password.length < 5) {
      Helper().flutterToast(
          "Password must be at least 6 characters long", Colors.red);
      return false;
    } else {
      LoginModel myData = await LoginService().submitData(email, password);
      if (myData.status == true) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LandingPage()));
      }
    }
  }
}
