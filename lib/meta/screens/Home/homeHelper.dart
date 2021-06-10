import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHelper {
  getCategoryText(int index) {
    if (index == 0) {
      return "Electronics";
    } else if (index == 1) {
      return "Mobiles";
    } else if (index == 2) {
      return "Animals";
    } else if (index == 3) {
      return "Foods & Health";
    } else if (index == 4) {
      return "Jobs";
    } else {
      return "Watch";
    }
  }

  Widget homeCategory() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Text(
                          getCategoryText(index),
                          style: ConstantsStyle().paraGraphStyle,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
