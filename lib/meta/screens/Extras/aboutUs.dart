import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/services/helper.dart';
import 'package:flutter/material.dart';

import 'extraPageHelper.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExtraPageHelper().headerTitle(context, "About Trade Bangla"),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // Text(
                  //   "About Trade Bangla",
                  //   style: TextStyle(
                  //       color: ConstantColors().greyPrimary,
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  // SizedBox(
                  //   height: 16,
                  // ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Trade Bangla ',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Helper().highLightColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      children: const <TextSpan>[
                        TextSpan(
                          text:
                              'is an online marketplace & Business Directory in Bangladesh where anyone can sell and buy almost anything. The site has a strong and growing community of users who trade in a wide range of item categories including Cars & Vehicles, mobile phones and computers Electronics, IT Services, Home & Garden Products, Property buy sale & Rents, Animals & Pet, Clothing & Fashion,  hobby,  Sport & Kids Products, Business & Industry Products,  Science & Education  Products,  Food  &  Health Products,  Agriculture  &  Agro Products. Organization can submit free Jobs post for in Bangladesh and Overseas Jobs in Bangladesh.',
                          style: TextStyle(
                            height: 1.7,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color(0xff646464),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Trade Bangla ',
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Helper().highLightColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                      children: const <TextSpan>[
                        TextSpan(
                          text:
                              'has the widest selection of popular second hand items all over Bangladesh, which makes it easy to find exactly what you are looking for. Trade Bangla does not specialize in any specific category - here you can buy and sell items in more than 100 different categories. We also carefully review all ads that are being published, to make sure the quality is up to our standards. Trade Bangla is proud to help many people established successful online businesses that make a living out of it.',
                          style: TextStyle(
                            height: 1.7,
                            fontWeight: FontWeight.normal,
                            fontSize: 14,
                            color: Color(0xff646464),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
