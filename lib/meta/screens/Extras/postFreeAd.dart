import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Extras/extraPageHelper.dart';
import 'package:flutter/material.dart';

class PostFreeAd extends StatelessWidget {
  const PostFreeAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExtraPageHelper().headerTitle(context, "Post Free ad"),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                // Text(
                //   "Post Free ad",
                //   style: TextStyle(
                //       color: ConstantColors().greyPrimary,
                //       fontSize: 25,
                //       fontWeight: FontWeight.bold),
                //   textAlign: TextAlign.center,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
