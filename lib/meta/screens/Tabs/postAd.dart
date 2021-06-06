import 'package:bikroy/app/widgets/customInput.dart';
import 'package:flutter/material.dart';

class PostAd extends StatefulWidget {
  const PostAd({Key? key}) : super(key: key);

  @override
  _PostAdState createState() => _PostAdState();
}

class _PostAdState extends State<PostAd> {
  TextEditingController _titleEditingController = TextEditingController();
  TextEditingController _descEditingController = TextEditingController();
  TextEditingController _priceEditingController = TextEditingController();

  //when user writes email and presses enter then we want to move the focus to password automatically
//that's why we need focusnode
  late FocusNode focusNode;
  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomInput(
              hintText: "Title",
              onChanged: (value) {
                _titleEditingController.text = value;
              },
              onSubmitted: (value) {
                focusNode.requestFocus();
              },
              focusNode: focusNode)
        ],
      ),
    );
  }
}
