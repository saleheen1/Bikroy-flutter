import 'package:bikroy/app/widgets/bottomNav.dart';
import 'package:bikroy/meta/screens/Directories/BusinessDirPage.dart';
import 'package:bikroy/meta/screens/Home/homeTab.dart';
import 'package:bikroy/meta/screens/Posts/postCategoryPage.dart';
import 'package:bikroy/meta/screens/Tabs/drawerPage.dart';
import 'package:bikroy/meta/screens/Search/searchTab.dart';
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
    // SliverPage(),
    SearchTab(),
    PostCategoryPage(),
    BusinessDirPage(),
    DrawerPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   foregroundColor: Colors.green,
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("bikroy", style: TextStyle(fontWeight: FontWeight.bold)),
        //     ],
        //   ),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        // ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNav(
          currentIndex: _currentIndex,
          onTabTapped: onTabTapped,
        ));
  }
}
