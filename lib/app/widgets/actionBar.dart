import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  final String title;
  final bool hasBackArrow;
  final Color arrowColor;
  final Color bgColor;

  const ActionBar({
    Key? key,
    required this.title,
    required this.hasBackArrow,
    this.arrowColor = Colors.grey,
    this.bgColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(top: 0, left: 0, right: 25, bottom: 15),
      child: Row(
        children: [
          if (hasBackArrow)
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  margin: EdgeInsets.only(right: 17),
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  // color: Constants.kPrimary,
                  child: Icon(
                    Icons.arrow_back,
                    color: arrowColor,
                    size: 25,
                  )),
            ),
          title != ""
              ? Text(
                  title,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ConstantColors().greyPrimary),
                )
              : Container(
                  color: Colors.transparent,
                  height: 0,
                  width: 0,
                  child: Center(),
                ),
        ],
      ),
    );
  }
}
