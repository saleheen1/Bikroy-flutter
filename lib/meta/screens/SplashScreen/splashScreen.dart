import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() async {
    super.initState();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isSaved = prefs.getBool('userSaved');
    if (isSaved != null) {
      if (isSaved == true) {
      } else {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Helper().showLoading(),
      ),
    );
  }
}
