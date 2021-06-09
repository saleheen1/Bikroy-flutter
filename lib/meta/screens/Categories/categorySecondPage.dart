import 'package:bikroy/app/widgets/categoryList.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CategorySecondPage extends StatelessWidget {
  const CategorySecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: CategoryList(
        appBarTitle: "Auto Vehicles",
        whenPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  child: AllPosts(), type: PageTransitionType.rightToLeft));
        },
        categoryName: "Electronics",
      )),
    );
  }
}
