import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class Helper {
  getColor(index) {
    if (index == 0) {
      return Color(0xff197B72);
    } else if (index == 1) {
      return Color(0xff19537B);
    } else if (index == 2) {
      return Color(0xff69197B);
    } else if (index == 3) {
      return Color(0xff47901E);
    } else {
      if (index % 2 != 0) {
        return Color(0xffDD811C);
      } else {
        return Color(0xff197B72);
      }
    }
  }

  getText(index) {
    if (index == 0) {
      return "Auto-Vehicle & Parts";
    } else if (index == 1) {
      return "Agricultural Products";
    } else if (index == 2) {
      return "Art & Culture";
    } else if (index == 3) {
      return "Business & Services";
    } else {
      return "Book, Stationary & Print";
    }
  }

  getIcon(index) {
    if (index == 0) {
      return Icons.houseboat_outlined;
    } else if (index == 1) {
      return Icons.pets;
    } else if (index == 2) {
      return Icons.bookmark_add_outlined;
    } else if (index == 3) {
      return Icons.api;
    } else {
      return Icons.opacity;
    }
  }

  Widget backButton(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
          margin: EdgeInsets.only(right: 17),
          alignment: Alignment.center,
          height: 40,
          width: 60,
          // color: Constants.kPrimary,
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 25,
          )),
    );
  }

  Widget heroArea(String title) {
    return Container(
      padding: EdgeInsets.only(bottom: 20, left: 20, right: 20),
      alignment: Alignment.bottomCenter,
      // color: Color(0xff00C7FF),
      color: ConstantColors().primaryColor,
      height: 120,
      width: double.infinity,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget businessDirectoryList(Function whenClicked) {
    return Container(
      color: Color(0xffF0F0F0),
      child: GridView.count(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          physics: NeverScrollableScrollPhysics(),
          childAspectRatio: 3 / 2,
          crossAxisCount: 2,
          shrinkWrap: true,
          children: List.generate(6, (index) {
            return Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  whenClicked.call();
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      getIcon(index),
                      color: getColor(index),
                      size: 26,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        getText(index),
                        style: TextStyle(
                            fontSize: 14,
                            color: ConstantColors().greyPrimary,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }
}
