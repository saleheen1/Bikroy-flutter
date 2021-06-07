import 'package:flutter/material.dart';

class AddPost extends StatelessWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(
          "Add post",
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}
