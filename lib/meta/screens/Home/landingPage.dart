import 'package:bikroy/app/widgets/bottomNav.dart';
import 'package:bikroy/meta/screens/Directories/BusinessDirectoriesPage.dart';
import 'package:bikroy/meta/screens/Home/homeTab.dart';
import 'package:bikroy/meta/screens/Home/sliverPage.dart';
import 'package:bikroy/meta/screens/Posts/addPost.dart';
import 'package:bikroy/meta/screens/Posts/postCategoryPage.dart';
import 'package:bikroy/meta/screens/Tabs/drawerPage.dart';
import 'package:bikroy/meta/screens/Tabs/searchTab.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LandingPage> {
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
    SearchTab(),
    PostCategoryPage(),
    BusinessDirectoriesPage(),
    DrawerPage()
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
          child: _children[_currentIndex],
        ),
        bottomNavigationBar: BottomNav(
          currentIndex: _currentIndex,
          onTabTapped: onTabTapped,
        ));
  }
}
