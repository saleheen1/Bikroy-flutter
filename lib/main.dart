import 'package:bikroy/meta/screens/BottomNav/navHelper.dart';
import 'package:bikroy/meta/screens/Home/landingPage.dart';
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
          theme: ThemeData(fontFamily: 'poppins'),
          home: HomePage(),
        ),
        providers: [ChangeNotifierProvider(create: (_) => NavHelper())]);
  }
}
