import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final bool outlineBtn;

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.outlineBtn = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            width: double.infinity,
            height: 50,
            // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            decoration: BoxDecoration(
                color: outlineBtn
                    ? Colors.transparent
                    : ConstantColors().primaryColor,
                border: Border.all(
                  color: ConstantColors().primaryColor,
                  width: .8,
                ),
                borderRadius: BorderRadius.circular(6)),

            child: Stack(
              children: [
                Center(
                  child: Text(
                    text,
                    style: TextStyle(
                        color: outlineBtn
                            ? ConstantColors().primaryColor
                            : Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
