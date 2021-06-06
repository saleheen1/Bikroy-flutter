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
      showSelectedLabels: false,
      showUnselectedLabels: false,
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
            Icons.search,
            size: 29,
          ),
          title: Text('Search'),
        ),
        new BottomNavigationBarItem(
            icon: Icon(
              Icons.group_work_outlined,
              size: 29,
            ),
            title: Text('Directory'))
      ],
    );
  }
}
