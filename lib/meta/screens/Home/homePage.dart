import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/bottomNav.dart';
import 'package:bikroy/meta/screens/Categories/categoriesPage.dart';
import 'package:bikroy/meta/screens/Home/homeTab.dart';
import 'package:bikroy/meta/screens/Posts/addPost.dart';
import 'package:bikroy/meta/screens/Tabs/postAd.dart';
import 'package:bikroy/meta/screens/Tabs/postPage.dart';
import 'package:bikroy/meta/screens/Tabs/searchTab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey bottomNavigationKey = GlobalKey();
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  //Bottom nav pages
  final List<Widget> _children = [
    HomeTab(),
    AddPost(),
    SearchTab(),
    CategoriesPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("bikroy",
        //           style: TextStyle(
        //               color: ConstantColors().primaryColor,
        //               fontWeight: FontWeight.bold)),
        //     ],
        //   ),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        // ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: _children[_currentIndex],
          ),
        ),
        bottomNavigationBar: BottomNav(
          currentIndex: _currentIndex,
          onTabTapped: onTabTapped,
        ));
  }
}
