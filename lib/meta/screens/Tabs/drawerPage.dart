import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/Controllers/drawerMenu-controller.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:bikroy/meta/screens/Profile/resumeView.dart';
import 'package:bikroy/meta/screens/Profile/userProfile.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  getText(index) {
    if (index == 0) {
      return "About Us";
    } else if (index == 1) {
      return "Contact Us";
    } else if (index == 2) {
      return "Blog";
    } else if (index == 3) {
      return "Advertising";
    } else if (index == 4) {
      return "Free ecommerce website builder";
    } else if (index == 5) {
      return "Using Rules";
    } else if (index == 6) {
      return "Privacy Policy";
    } else if (index == 7) {
      return "Terms & Conditions";
    } else if (index == 8) {
      return "Post Free Ad";
    } else if (index == 9) {
      return "FAQ";
    } else {
      return "no data";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 54,
          color: Colors.white,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      InkWell(
                        onTap: () {
                          Helper().profilePopup(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "S.M. Saleheen",
                                    style: ConstantsStyle().regularHeading,
                                  ),
                                  Icon(
                                    Icons.settings,
                                    color: ConstantColors().greyPrimary,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "smsaleheen3@gmail.com",
                                style: ConstantsStyle().paraGraphStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(
                        thickness: .8,
                      ),
                      ListTile(
                        minLeadingWidth: 0,
                        leading: Icon(
                          Icons.home,
                          color: Helper().getColor(0),
                        ),
                        title: Text(
                          "My Ads",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: ConstantColors().greyPrimary),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllPosts()));
                        },
                      ),
                      ListTile(
                        minLeadingWidth: 0,
                        leading: Icon(
                          Icons.settings,
                          color: Helper().getColor(1),
                        ),
                        title: Text(
                          "Pending Ads",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: ConstantColors().greyPrimary),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AllPosts()));
                        },
                      ),
                      ListTile(
                        minLeadingWidth: 0,
                        leading: Icon(
                          Icons.contacts,
                          color: Helper().getColor(3),
                        ),
                        title: Text(
                          "View Resume",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: ConstantColors().greyPrimary),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResumeView()));
                        },
                      ),
                      Divider(
                        thickness: .8,
                      ),
                    ],
                  ),

                  //footer pages
                  for (var i = 0; i < 10; i++)
                    ListTile(
                      minLeadingWidth: 0,
                      leading: Icon(
                        Helper().getIcon(i),
                        color: Helper().getColor(i),
                      ),
                      title: Text(
                        getText(i),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: ConstantColors().greyPrimary),
                      ),
                      onTap: () {
                        Helper().drawerLinks(context, i);
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
