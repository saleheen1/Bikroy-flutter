import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/meta/screens/BottomNav/navHelper.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Center(
                    child: Provider.of<NavHelper>(context, listen: false)
                        .getPage(bottomNavigationKey, context)),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        inactiveIconColor: ConstantColors().greyPrimary,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
          ),
          TabData(
            iconData: Icons.search,
            title: "Search",
          ),
          TabData(
            iconData: Icons.message,
            title: "Message",
          ),
          TabData(iconData: Icons.perm_identity, title: "Profile")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            Provider.of<NavHelper>(context, listen: false).currentPage =
                position;
          });
        },
      ),
    );
  }
}
