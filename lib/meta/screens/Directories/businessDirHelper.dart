import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/material.dart';

class BusinessDirHelper {
  Widget heroTitle(String title, String subtitle, String imageLink) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: ConstantColors().greyPrimary),
                    ),
                    Text(
                      subtitle,
                      style: ConstantsStyle().paraGraphStyle,
                    ),
                  ],
                ),
              ),

              //illustration
              Container(
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                  // color: Colors.grey[100],
                  image: DecorationImage(
                      image: AssetImage(imageLink), fit: BoxFit.fitHeight),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
