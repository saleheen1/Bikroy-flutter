import 'package:bikroy/screens/Tabs/homeTab.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavHelper extends ChangeNotifier {
  int currentPage = 0;
  set setCurrentPage(int currentPage) {
    this.currentPage = currentPage;
    notifyListeners();
  }

  getPage(bottomNavigationKey, context) {
    switch (currentPage) {
      case 0:
        return HomeTab();
      case 1:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Search",
              style: TextStyle(fontSize: 40),
            ),
          ],
        );
      case 2:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Message",
              style: TextStyle(fontSize: 40),
            ),
          ],
        );
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Cart",
              style: TextStyle(fontSize: 40),
            ),
          ],
        );
    }
  }
}
