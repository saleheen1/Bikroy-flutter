import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class JobCategoryPage extends StatelessWidget {
  const JobCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.car_rental,
                      color: ConstantColors().primaryColor,
                      size: 29,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Electronics ${index + 1}",
                      style: TextStyle(
                          fontSize: 16,
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
}
