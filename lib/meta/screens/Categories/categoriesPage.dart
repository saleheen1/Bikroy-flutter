import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/actionBar.dart';
import 'package:bikroy/app/widgets/categoryList.dart';
import 'package:bikroy/meta/screens/Categories/categorySecondPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CategoryList(
          appBarTitle: "Categories",
          categoryName: "Mobile",
          whenPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    child: CategorySecondPage(),
                    type: PageTransitionType.rightToLeft));
          },
        ),
      ),
    );
  }
}
