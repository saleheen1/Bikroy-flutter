import 'package:bikroy/Constants/Constantcolors.dart';
import 'package:bikroy/screens/BottomNav/navHelper.dart';
import 'package:bikroy/screens/Tabs/homeTab.dart';
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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Bikroy",
                style: TextStyle(
                    color: ConstantColors().primaryColor,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
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
      bottomNavigationBar: FancyBottomNavigation(
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
            title: "Search",
          ),
          TabData(iconData: Icons.shopping_cart, title: "Basket")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            Provider.of<NavHelper>(context, listen: false).setCurrentPage =
                position;
          });
        },
      ),
    );
  }
}
