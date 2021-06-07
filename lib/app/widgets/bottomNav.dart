import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;
  const BottomNav(
      {Key? key, required this.currentIndex, required this.onTabTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,

      selectedItemColor: ConstantColors().primaryColor,
      unselectedItemColor: ConstantColors().greyPrimary,
      onTap: onTabTapped, // new
      currentIndex: currentIndex, // new
      items: [
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 29,
          ),
          title: Text('Home'),
        ),
        new BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_sharp,
              size: 29,
            ),
            title: Text('Post')),
        new BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            size: 29,
          ),
          title: Text('Search'),
        ),
        new BottomNavigationBarItem(
            icon: Icon(
              Icons.list_rounded,
              size: 29,
            ),
            title: Text('Directory'))
      ],
    );
  }
}
