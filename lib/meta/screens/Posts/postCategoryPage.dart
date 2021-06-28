import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Directories/businessDirHelper.dart';
import 'package:bikroy/meta/screens/Posts/postSubCategory.dart';
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
        // Helper().whiteHeroArea("Post an Ad", false, Colors.grey, context),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 20),
          child: BusinessDirHelper().heroTitle(
              "Post an Ad",
              "Posting Ad in Trade Bangla is completely free!",
              'assets/images/nib.png'),
        ),
        Divider(
          thickness: .7,
          height: 0,
        ),
        Helper().buySellCategory(context),
      ],
    );
  }
}
