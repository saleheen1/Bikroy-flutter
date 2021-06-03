import 'package:bikroy/screens/BottomNav/navHelper.dart';
import 'package:bikroy/screens/Home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
        providers: [ChangeNotifierProvider(create: (_) => NavHelper())]);
  }
}
