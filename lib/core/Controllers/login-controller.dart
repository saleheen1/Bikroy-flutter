import 'package:bikroy/core/Models/login-Model.dart';
import 'package:bikroy/core/Services/login-service.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Home/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginController with ChangeNotifier {
  bool isloading = false;

  bool get getLoading => isloading;
  void makeLoadingTrue() {
    isloading = true;
    notifyListeners();
  }

  void makeLoadingFalse() {
    print("visbility false function rannnnn");
    isloading = false;
    notifyListeners();
  }

  Future fetchData(String email, String password, BuildContext context) async {
    if (email.isEmpty) {
      Helper().flutterToast("Email field cannot be empty", Colors.red);
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
      Provider.of<LoginController>(context, listen: false).makeLoadingTrue();
      LoginService().submitData(email, password, context);
    }
  }
}
