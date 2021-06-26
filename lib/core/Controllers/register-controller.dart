import 'package:bikroy/core/Models/Register-model.dart';
import 'package:bikroy/core/Services/Register-service.dart';
import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Authentications/loginPage.dart';
import 'package:flutter/material.dart';

class RegisterController with ChangeNotifier {
  bool isloading = false;
  void loadingCircle() {
    isloading = true;
    notifyListeners();
  }

  void makeLoadingFalse() {
    print("visbility false function rannnnn");
    isloading = false;
    notifyListeners();
  }

  void submitData(
      String name,
      String mobile,
      String password,
      String confirmPass,
      String email,
      String type,
      bool checkedValue,
      context) async {
    if (name.isEmpty) {
      Helper().flutterToast("Name field cannot be empty", Colors.red);
    } else if (mobile.isEmpty) {
      Helper().flutterToast("Mobile field cannot be empty", Colors.red);
    } else if (mobile.length < 11 || mobile.length > 11) {
      Helper().flutterToast("Invalid mobile number", Colors.red);
    } else if (email.isEmpty) {
      Helper().flutterToast("Email field cannot be empty", Colors.red);
    } else if (!email.contains("@")) {
      Helper().flutterToast("Invalid email", Colors.red);
    } else if (password.isEmpty) {
      Helper().flutterToast("Password field cannot be empty", Colors.red);
    } else if (password.length < 6) {
      Helper().flutterToast(
          "Password must be at least 6 characters long", Colors.red);
    } else if (confirmPass.isEmpty) {
      Helper().flutterToast("Please enter password again", Colors.red);
    } else if (password != confirmPass) {
      Helper().flutterToast("Password didn't match", Colors.red);
    } else if (int.parse(type) == 0) {
      Helper().flutterToast("Please select account type", Colors.red);
    } else if (checkedValue == false) {
      Helper().flutterToast(
          "You have to agree to our terms and condition to register",
          Colors.red);
    } else {
      //if everything is fine then proceed with the registration
      RegisterModel myData = await RegisterService()
          .submitData(name, mobile, password, email, type);
      if (myData.status == true) {
        Helper().flutterToast(
            "Registration Successful, Please login", Colors.green);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      }
    }
  }
}
