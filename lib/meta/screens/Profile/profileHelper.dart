import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class ProfileHelper {
  final paraGraphStyle =
      TextStyle(fontSize: 14, color: ConstantColors().greyPrimary);

  Widget resumeList() {
    return ListView.builder(
      padding: EdgeInsets.all(0),
      itemCount: 7,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        // final item = items[index];

        return Container(
          margin: EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Father's Name :",
                style: TextStyle(
                    fontSize: 15, color: ConstantColors().greyPrimary),
              ),
              Text(
                "Saleheen",
                style: TextStyle(
                    fontSize: 15, color: ConstantColors().greyPrimary),
              ),
            ],
          ),
        );
      },
    );
  }
}
