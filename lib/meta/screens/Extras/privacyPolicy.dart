import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/material.dart';

import 'extraPageHelper.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExtraPageHelper().headerTitle(context, "Privacy Policy"),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // Text(
                //   "Privacy Policy",
                //   style: TextStyle(
                //       color: ConstantColors().greyPrimary,
                //       fontSize: 25,
                //       fontWeight: FontWeight.bold),
                //   textAlign: TextAlign.center,
                // ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text:
                        'All together for the site to give a sheltered and valuable administration, it is essential for ',
                    style: TextStyle(
                      height: 1.7,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color(0xff646464),
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Trade Bangla, ',
                        style: TextStyle(
                          color: Color(0xff0d47a1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              'to gather, utilize, and share individual data.'),
                    ],
                  ),
                ),

                //2nd Para
                SizedBox(
                  height: 20,
                ),

                Text(
                  "Accumulation:",
                  style: ConstantsStyle().regularHeading,
                ),

                Divider(),

                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Data posted on ',
                    style: TextStyle(
                      height: 1.7,
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Color(0xff646464),
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Trade Bangla, ',
                        style: TextStyle(
                          color: Color(0xff0d47a1),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text:
                              'is openly accessible. On the off chance that you furnish us with individual data, you are consenting to the exchange and capacity of that data on our servers. We gather and store the accompanying individual data:Email address, contact data, and (contingent upon the administration utilized) here and there budgetary data PC sign-on information, measurements on online visits, movement to and from Bikroy.com and reaction to promotions Other data, including client\'s IP address and standard web log data.'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
