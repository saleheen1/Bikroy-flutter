import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/customInput.dart';
import 'package:bikroy/core/services/helper.dart';
import 'package:bikroy/meta/screens/Posts/postHelper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> with SingleTickerProviderStateMixin {
  late FocusNode focusNode;

  AnimationController? _controller;
  Animation? _animation;

  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 300.0, end: 50.0).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        _controller!.forward();
      } else {
        _controller!.reverse();
      }
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    _controller!.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Helper().heroArea("Post an Ad"),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              CustomInput(
                hintText: "Title",
                onChanged: (value) {},
                onSubmitted: (value) {
                  focusNode.nextFocus();
                },
                textInputAction: TextInputAction.next,
              ),

              //Post description
              Container(
                margin: EdgeInsets.only(bottom: 19),
                decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.circular(6)),
                child: TextField(
                  style: TextStyle(fontSize: 14),
                  maxLines: 8,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Description",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 13, vertical: 13)),
                ),
              ),

              //Pick image
              InkWell(
                onTap: () {
                  PostHelper().pickImage(context, ImageSource.gallery);
                },
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: ConstantColors().primaryColor,
                            borderRadius: BorderRadius.circular(5)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        child: Text(
                          "Choose Image",
                          style: TextStyle(color: Colors.white),
                        )),

                    //show picked image
                    // Container(
                    //     height: 80,
                    //     width: 80,
                    //     decoration: new BoxDecoration(
                    //         image: DecorationImage(
                    //       image: FileImage(PostHelper().pickedImage),
                    //       fit: BoxFit.cover,
                    //     )))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
