import 'dart:io';

import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'postDetailsPage.dart';

class PostHelper {
  final picker = ImagePicker();
  late File pickedImage;
  // late File pickedImage = File(
  //     "/data/user/0/com.example.bikroy/cache/image_picker3326660202668117961.jpg");
  File get getPickedImage => pickedImage;
  Future pickImage(BuildContext context, ImageSource source) async {
    final pickedpickedImage =
        await picker.getImage(source: source); //source = gallery/camera etc
    pickedpickedImage == null
        ? print("Select image")
        : pickedImage = File(pickedpickedImage.path);
    print(pickedImage.path);
    // return pickedImage;

    // pickedImage != null
    //     ? Provider.of<LandingServices>(context, listen: false)
    //         .showpickedImage(context)
    //     : print("image upload error");

    // notifyListeners();
  }

  Widget chooseImageBtn(BuildContext context) {
    return InkWell(
      onTap: () {
        PostHelper().pickImage(context, ImageSource.gallery);
      },
      child: Container(
          decoration: BoxDecoration(
              color: ConstantColors().primaryColor,
              borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            "Choose Images",
            style: TextStyle(color: Colors.white),
          )),
    );
  }

  //Sizedbox
  Widget customSizedBox() {
    return SizedBox(
      height: 17,
    );
  }

  //Post list widget
  Widget postList(
    BuildContext context,
  ) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PostDetailsPage()));
        // Navigator.push(
        //     context,
        //     PageTransition(
        //         child: PostDetailsPage(),
        //         type: PageTransitionType.rightToLeft));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 28),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Image.network(
                  "https://images.unsplash.com/photo-1550355291-bbee04a92027?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                  fit: BoxFit.cover,
                ),
                height: 90,
                width: 100,
                color: Colors.grey[200],
              ),
            ),
            SizedBox(
              width: 19,
            ),
            Expanded(
              flex: 5,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bismillah cars limited",
                          style: ConstantsStyle().regularHeading,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Architect Engineering",
                          style: TextStyle(
                              color: ConstantColors().greyPrimary,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "23/KA, Moghbazar, Dhaka",
                          style: TextStyle(
                              color: ConstantColors().greySecondary,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
