import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class SearchHelper {
  // modal(BuildContext context) {
  //   return showModalBottomSheet<void>(
  //     isScrollControlled: true,
  //     context: context,
  //     builder: (BuildContext context) {
  //       return SingleChildScrollView(
  //         child: Container(
  //           child: CategoryList(
  //             appBarTitle: "Electronics",
  //             categoryName: "Cars & Electronics",
  //             whenPressed: () {
  //               Navigator.push(context,
  //                   MaterialPageRoute(builder: (context) => AllPosts()));
  //               // Navigator.push(
  //               //     context,
  //               //     PageTransition(
  //               //         child: CategorySecondPage(),
  //               //         type: PageTransitionType.rightToLeft));
  //             },
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget locationFilter() {
    return Row(
      children: [
        Material(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                size: 19,
                color: ConstantColors().greyPrimary,
              ),
              SizedBox(
                width: 7,
              ),
              Text("Dhaka",
                  style: TextStyle(
                      fontSize: 15,
                      // fontWeight: FontWeight.w600,
                      color: ConstantColors().greyPrimary))
            ],
          ),
        ),
        Expanded(
          child: InkWell(
            splashColor: Colors.transparent,
            // hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Change location",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: ConstantColors().primaryColor))
              ],
            ),
          ),
        )
      ],
    );
  }
}
