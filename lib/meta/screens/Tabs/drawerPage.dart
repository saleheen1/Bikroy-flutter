import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                // UserAccountsDrawerHeader(
                //   decoration: BoxDecoration(color: Colors.white),
                //   accountName: Text(
                //     "S.M. Saleheen",
                //     style: ConstantsStyle().paraGraphStyle,
                //   ),
                //   accountEmail: Text(
                //     "smsaleheen3@gmail.com",
                //     style: ConstantsStyle().paraGraphStyle,
                //   ),
                //   currentAccountPicture: CircleAvatar(
                //     backgroundColor: Colors.grey[200],
                //     child: Text(
                //       "S",
                //       style: TextStyle(
                //           fontSize: 40.0, color: ConstantColors().primaryColor),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 18, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        height: 5,
                      ),
                      Text(
                        "smsaleheen3@gmail.com",
                        style: ConstantsStyle().paraGraphStyle,
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: .8,
                ),
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.home),
                  title: Text(
                    "My Ads",
                    style: TextStyle(
                        fontSize: 15, color: ConstantColors().greyPrimary),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.settings),
                  title: Text(
                    "Pending Ads",
                    style: TextStyle(
                        fontSize: 15, color: ConstantColors().greyPrimary),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  minLeadingWidth: 0,
                  leading: Icon(Icons.contacts),
                  title: Text(
                    "View Resume",
                    style: TextStyle(
                        fontSize: 15, color: ConstantColors().greyPrimary),
                  ),
                  onTap: () {},
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
                leading: Icon(Icons.handyman),
                title: Text(
                  getText(i),
                  style: TextStyle(
                      fontSize: 15, color: ConstantColors().greyPrimary),
                ),
                onTap: () {},
              ),
          ],
        ),
      ),
    );
  }
}