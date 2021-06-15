import 'package:bikroy/app/widgets/categoryList.dart';
import 'package:bikroy/meta/screens/Posts/addPost.dart';
import 'package:flutter/material.dart';

class PostSubCategory extends StatelessWidget {
  const PostSubCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryList(
        appBarTitle: "Auto Vehicles",
        whenPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddPost()));
        },
        categoryName: "Electronics",
      ),
    );
  }
}
