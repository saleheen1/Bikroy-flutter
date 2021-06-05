import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  final String title;
  final bool hasBackArrow;
  final bool showCart;

  const ActionBar(
      {Key? key,
      required this.title,
      required this.hasBackArrow,
      required this.showCart})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (hasBackArrow)
            InkWell(
              onTap: () {},
              child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  // color: Constants.kPrimary,
                  child: Icon(
                    Icons.arrow_back,
                    color: ConstantColors().greyPrimary,
                    size: 25,
                  )),
            ),
          title != ""
              ? Text(
                  title,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              : Container(
                  color: Colors.transparent,
                  height: 0,
                  width: 0,
                  child: Center(),
                ),
          showCart == true
              ? InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    // color: Constants.kPrimary,
                  ),
                )
              : Container(
                  height: 20,
                  width: 20,
                ),
        ],
      ),
    );
  }
}
