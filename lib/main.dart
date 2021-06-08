import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/meta/screens/Authentications/loginPage.dart';
import 'package:bikroy/meta/screens/Home/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'poppins', accentColor: ConstantColors().primaryColor),
      home: LoginPage(),
    );
  }
}

// return MultiProvider(
//         child: MaterialApp(
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(fontFamily: 'poppins'),
//           home: HomePage(),
//         ),
//         providers: [ChangeNotifierProvider(create: (_) => NavHelper())]);
