import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class ConstantsStyle {
  final regularHeading = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: ConstantColors().headingColor);

  final productTitleHeading = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: ConstantColors().headingColor);

  final priceStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: ConstantColors().primaryColor);

  final paraGraphStyle = TextStyle(
    height: 1.7,
    fontSize: 14,
    color: ConstantColors().greyPrimary,
  );
}
