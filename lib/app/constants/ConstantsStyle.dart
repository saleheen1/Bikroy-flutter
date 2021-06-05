import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class ConstantsStyle {
  final regularHeading = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: ConstantColors().headingColor);

  final priceStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: ConstantColors().primaryColor);

  final paraGraphStyle = TextStyle(
    fontSize: 14,
    color: ConstantColors().greyPrimary,
  );
}
