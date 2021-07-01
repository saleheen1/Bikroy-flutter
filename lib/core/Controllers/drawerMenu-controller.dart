import 'package:flutter/cupertino.dart';

class DrawerMenuController with ChangeNotifier {
  bool isMenuOpen = false;

  void menuToggle() {
    isMenuOpen = !isMenuOpen;
    notifyListeners();
  }
}
