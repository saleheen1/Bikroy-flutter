import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/meta/screens/Extras/aboutUs.dart';
import 'package:bikroy/meta/screens/Extras/advertising.dart';
import 'package:bikroy/meta/screens/Extras/contactUs.dart';
import 'package:bikroy/meta/screens/Extras/faqPage.dart';
import 'package:bikroy/meta/screens/Extras/postFreeAd.dart';
import 'package:bikroy/meta/screens/Extras/privacyPolicy.dart';
import 'package:bikroy/meta/screens/Extras/rules.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:flutter/material.dart';

class Helper {
  Color highLightColor = Color(0xff2A3990);

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

  getBuySellText(index) {
    if (index == 0) {
      return "Cars & Vehicles";
    } else if (index == 1) {
      return "Electronics";
    } else if (index == 2) {
      return "IT & Software";
    } else if (index == 3) {
      return "Service";
    } else if (index == 4) {
      return "Jobs in BD";
    } else if (index == 5) {
      return "Oversea Jobs";
    } else if (index == 6) {
      return "All Ads";
    } else if (index == 7) {
      return "Directory";
    } else {
      return "Animals & Pet";
    }
  }

  // jobTypeText(index) {
  //   if (index == 0) {
  //     return "All Ads";
  //   } else if (index == 1) {
  //     return "Jobs in BD";
  //   } else if (index == 2) {
  //     return "Overseas Jobs";
  //   } else {
  //     return "Directory";
  //   }
  // }

  getIcon(index) {
    if (index == 0) {
      return Icons.houseboat_outlined;
    } else if (index == 1) {
      return Icons.pets;
    } else if (index == 2) {
      return Icons.bookmark_add_outlined;
    } else if (index == 3) {
      return Icons.api;
    } else if (index == 4) {
      return Icons.work_outline_outlined;
    } else if (index == 5) {
      return Icons.language;
    } else if (index == 6) {
      return Icons.lightbulb_outline;
    } else {
      return Icons.opacity;
    }
  }

  jobTypeIcon(index) {
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
      padding: EdgeInsets.only(bottom: 17, left: 20, right: 20),
      alignment: Alignment.bottomCenter,
      // color: Color(0xff00C7FF),
      color: ConstantColors().primaryColor,
      height: 100,
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

  //Category widget
  Widget buySellCategory(Function whenClicked) {
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
          children: List.generate(8, (index) {
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
                        getBuySellText(index),
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

  //Jobs widget
  // Widget jobTypes(Function whenClicked) {
  //   return Container(
  //     color: Color(0xffF0F0F0),
  //     child: GridView.count(
  //         padding: EdgeInsets.zero,
  //         scrollDirection: Axis.vertical,
  //         mainAxisSpacing: 1,
  //         crossAxisSpacing: 1,
  //         physics: NeverScrollableScrollPhysics(),
  //         childAspectRatio: 3 / 2,
  //         crossAxisCount: 2,
  //         shrinkWrap: true,
  //         children: List.generate(6, (index) {
  //           return Material(
  //             color: Colors.white,
  //             child: InkWell(
  //               onTap: () {
  //                 whenClicked.call();
  //               },
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Icon(
  //                     getIcon(index),
  //                     color: getColor(index),
  //                     size: 26,
  //                   ),
  //                   SizedBox(
  //                     height: 10,
  //                   ),
  //                   Container(
  //                     margin: EdgeInsets.symmetric(horizontal: 25),
  //                     child: Text(
  //                       jobTypeText(index),
  //                       style: TextStyle(
  //                           fontSize: 14,
  //                           color: ConstantColors().greyPrimary,
  //                           fontWeight: FontWeight.w600),
  //                       textAlign: TextAlign.center,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //         })),
  //   );
  // }

  drawerLinks(BuildContext context, index) {
    if (index == 0) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AboutUs()));
    } else if (index == 1) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ContactUs()));
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AllPosts()));
    } else if (index == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Advertising()));
    } else if (index == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Advertising()));
    } else if (index == 5) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Rules()));
    } else if (index == 6) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
    } else if (index == 7) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
    } else if (index == 8) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => PostFreeAd()));
    } else if (index == 9) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FaqPage()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AllPosts()));
    }
  }
}
