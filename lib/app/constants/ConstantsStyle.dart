import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class ConstantsStyle {
  final regularHeading = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: ConstantColors().headingColor);

  final productTitleHeading = TextStyle(
      fontSize: 15,
      height: 1.5,
      fontWeight: FontWeight.w600,
      color: ConstantColors().headingColor);

  final priceStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: ConstantColors().primaryColor);

  final paraGraphStyle = TextStyle(
    height: 1.6,
    fontSize: 14,
    color: ConstantColors().greyPrimary,
  );
}
