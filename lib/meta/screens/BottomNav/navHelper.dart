import 'package:bikroy/meta/screens/Tabs/homeTab.dart';
import 'package:bikroy/meta/screens/Tabs/searchTab.dart';
import 'package:bikroy/meta/screens/singleProduct.dart';
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
        return SearchTab();
      case 2:
        return SingleProduct();
      default:
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Profile",
              style: TextStyle(fontSize: 40),
            ),
          ],
        );
    }
  }
}
