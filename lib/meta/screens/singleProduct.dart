import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // slider
        Container(
          height: 230,
          child: PageView(
            children: [
              for (int i = 0; i < 3; i++)
                Image.network(
                  "https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
                  fit: BoxFit.cover,
                )
            ],
          ),
        ),

        //descriptions
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Huawei Nova 3",
                style: TextStyle(
                    fontSize: 25,
                    color: ConstantColors().headingColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Icon(
                    Icons.access_time_filled,
                    color: ConstantColors().greyPrimary,
                    size: 20,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "3 hours ago",
                    style: TextStyle(
                      fontSize: 14,
                      color: ConstantColors().greyPrimary,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: ConstantColors().greyPrimary,
                    size: 21,
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Text(
                    "Mirpur, Dhaka",
                    style: TextStyle(
                      fontSize: 14,
                      color: ConstantColors().greyPrimary,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
