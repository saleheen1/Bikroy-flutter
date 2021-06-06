import 'package:bikroy/meta/screens/Home/homePage.dart';
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
      theme: ThemeData(fontFamily: 'poppins'),
      home: HomePage(),
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
