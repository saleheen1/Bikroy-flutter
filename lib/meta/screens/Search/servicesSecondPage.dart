import 'package:bikroy/app/widgets/categoryList.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:flutter/material.dart';

class ServicesSecondPage extends StatelessWidget {
  const ServicesSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CategoryList(
          appBarTitle: "Electronics",
          categoryName: "Cars & Electronics",
          whenPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AllPosts()));
            // Navigator.push(
            //     context,
            //     PageTransition(
            //         child: CategorySecondPage(),
            //         type: PageTransitionType.rightToLeft));
          },
        ),
      ),
    );
  }
}
