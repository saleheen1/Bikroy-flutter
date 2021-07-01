import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/core/Controllers/drawerMenu-controller.dart';
import 'package:bikroy/core/Controllers/login-controller.dart';
import 'package:bikroy/core/Controllers/register-controller.dart';
import 'package:bikroy/meta/screens/Authentications/loginPage.dart';
import 'package:bikroy/meta/screens/Home/homeHelper.dart';
import 'package:bikroy/meta/screens/Home/landingPage.dart';
import 'package:bikroy/meta/screens/SplashScreen/splashScreen.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RegisterController()),
        ChangeNotifierProvider(create: (_) => LoginController()),
        ChangeNotifierProvider(create: (_) => DrawerMenuController()),
        ChangeNotifierProvider(create: (_) => HomeHelper()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(accentColor: ConstantColors().primaryColor),
        home: SplashScreen(),
      ),
    );
  }
}

    // return MultiProvider(
    //   providers: [
    //     FutureProvider(
    //         create: (_) => CategoryService().fetchCategory(), initialData: null)
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     theme: ThemeData(
    //         fontFamily: 'poppins', accentColor: ConstantColors().primaryColor),
    //     home: LoginPage(),
    //   ),
    // );
