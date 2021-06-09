import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
}
