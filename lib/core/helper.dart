import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/meta/screens/Authentications/loginPage.dart';
import 'package:bikroy/meta/screens/Extras/aboutUs.dart';
import 'package:bikroy/meta/screens/Extras/advertising.dart';
import 'package:bikroy/meta/screens/Extras/contactUs.dart';
import 'package:bikroy/meta/screens/Extras/faqPage.dart';
import 'package:bikroy/meta/screens/Extras/postFreeAd.dart';
import 'package:bikroy/meta/screens/Extras/privacyPolicy.dart';
import 'package:bikroy/meta/screens/Extras/rules.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:bikroy/meta/screens/Posts/postHelper.dart';
import 'package:bikroy/meta/screens/Posts/postSubCategory.dart';
import 'package:bikroy/meta/screens/Profile/userProfile.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  showLoading() {
    return SpinKitHourGlass(
      color: ConstantColors().primaryColor,
      size: 30.0,
    );
  }

  //show toast
  void flutterToast(String title, Color color) {
    Fluttertoast.showToast(
        msg: title,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: 16.0);
  }

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

  Widget heroArea(
      String title, bool hasBackArrow, Color arrowColor, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 24),
      alignment: Alignment.bottomCenter,
      // color: Color(0xff00C7FF),
      color: ConstantColors().primaryColor,
      height: 90,
      width: double.infinity,
      child: Row(
        children: [
          if (hasBackArrow)
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  padding: EdgeInsets.only(right: 7),
                  alignment: Alignment.center,
                  // color: Constants.kPrimary,
                  child: Icon(
                    Icons.arrow_back,
                    color: arrowColor,
                    size: 25,
                  )),
            ),
          Expanded(
            child: Container(
              margin:
                  hasBackArrow ? EdgeInsets.only(left: 12) : EdgeInsets.zero,
              child: Text(title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: hasBackArrow ? TextAlign.left : TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }

  Widget whiteHeroArea(
      String title, bool hasBackArrow, Color arrowColor, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 17, left: 20, right: 20),
      alignment: Alignment.bottomCenter,
      // color: Color(0xff00C7FF),
      // color: ConstantColors().primaryColor,
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          if (hasBackArrow)
            Container(
              width: 35,
              child: InkWell(
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
            ),
          Expanded(
            child: Container(
              margin:
                  hasBackArrow ? EdgeInsets.only(left: 15) : EdgeInsets.zero,
              child: Text(title,
                  style: TextStyle(
                      color: ConstantColors().greyPrimary,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                  textAlign: hasBackArrow ? TextAlign.left : TextAlign.center),
            ),
          ),
        ],
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
  Widget buySellCategory(BuildContext context) {
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PostSubCategory()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 8),
                      height: 30,
                      width: 60,
                      child: Image.network(
                        PostHelper().getCategoryImage(index),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      getBuySellText(index),
                      style: TextStyle(
                          fontSize: 14,
                          color: ConstantColors().greyPrimary,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }

  //Profile popup menu
  Widget profilePopup(BuildContext context) {
    return Material(
      elevation: 8,
      child: IntrinsicWidth(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // InkWell(
            //     onTap: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => UserProfile()));
            //     },
            //     child: ListTile(title: Text('View profile'))),
            InkWell(
                onTap: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setBool('userSaved', false);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: ListTile(
                    title:
                        Text('Log out', style: TextStyle(color: Colors.red)))),
          ],
        ),
      ),
    );
  }

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
