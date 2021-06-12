import 'package:bikroy/core/services/helper.dart';
import 'package:bikroy/meta/screens/Posts/postSubCategory.dart';
import 'package:bikroy/meta/screens/Search/servicesSecondPage.dart';
import 'package:flutter/material.dart';

class PostCategoryPage extends StatefulWidget {
  const PostCategoryPage({Key? key}) : super(key: key);

  @override
  _PostCategoryPageState createState() => _PostCategoryPageState();
}

class _PostCategoryPageState extends State<PostCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Helper().whiteHeroArea("Post an Ad", false, Colors.grey, context),
        Divider(
          thickness: .7,
          height: 0,
        ),
        Helper().buySellCategory(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => PostSubCategory()));
        }),
      ],
    );
  }
}
