import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtraPageHelper {
  final richTextStyle = TextStyle(
    height: 1.7,
    fontFamily: 'poppins',
    fontWeight: FontWeight.normal,
    fontSize: 14,
    color: Color(0xff646464),
  );

  final richHighlightStyle = TextStyle(
    color: Color(0xff0d47a1),
    fontWeight: FontWeight.bold,
  );

  Widget headerTitle(BuildContext context, title) {
    return Container(
      padding: EdgeInsets.only(bottom: 17, left: 20, right: 20, top: 50),
      alignment: Alignment.bottomCenter,
      // color: Color(0xff00C7FF),
      color: ConstantColors().primaryColor,

      width: double.infinity,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  //faq Questions
  Widget faqQuestion(BuildContext context, question) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        question,
        style: TextStyle(
            color: ConstantColors().greyPrimary,
            fontSize: 22,
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
