import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';

class BusinessDirHelper {
//Shop details page  top big image area
  Widget buildCarousel(String coverLink, String profileImgLink, String name,
      BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          child: Image.network(
            "https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 25,
          left: 25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Image.network(
                  "https://images.unsplash.com/photo-1545289414-1c3cb1c06238?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        //Back button
        Positioned(top: 35, left: 10, child: Helper().backButton(context)),
      ],
    );
  }

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
