import 'package:bikroy/app/widgets/categoryList.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CategoryList(
        appBarTitle: "Categories",
        categoryName: "Agriculture Products",
        whenPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AllPosts()));
          // Navigator.push(
          //     context,
          //     PageTransition(
          //         child: AllPosts(), type: PageTransitionType.rightToLeft));
        },
      ),
    );
  }
}
