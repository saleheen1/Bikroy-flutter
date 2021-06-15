import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:flutter/material.dart';

class SecondBusinessDirectoriesPage extends StatelessWidget {
  const SecondBusinessDirectoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Helper().heroArea("Cars & Electronics", true, Colors.white, context),
          Helper().businessDirectoryList(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AllPosts()));
          }),
        ],
      ),
    );
  }
}
