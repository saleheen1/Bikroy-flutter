import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/actionBar.dart';
import 'package:bikroy/meta/screens/Posts/postDetails.dart';
import 'package:bikroy/meta/screens/Posts/postDetailsPage.dart';
import 'package:bikroy/meta/screens/singleProduct.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AllPosts extends StatelessWidget {
  const AllPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                ActionBar(title: "Car Companies", hasBackArrow: true),
                for (var i = 0; i < 7; i++)
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: PostDetailsPage(),
                              type: PageTransitionType.rightToLeft));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              height: 90,
                              width: 100,
                              color: Colors.grey[200],
                            ),
                          ),
                          SizedBox(
                            width: 19,
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bismillah cars limited",
                                        style: ConstantsStyle().regularHeading,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "Bismillah cars limited",
                                        style: TextStyle(
                                            color: ConstantColors().greyPrimary,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "23/KA, New Eskaton Road, Moghbazar, Dhaka",
                                        style: TextStyle(
                                            color:
                                                ConstantColors().greySecondary,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
        // child: ListView.builder(
        //   padding: EdgeInsets.all(0),
        //   itemCount: 7,
        //   shrinkWrap: true,
        //   scrollDirection: Axis.vertical,
        //   itemBuilder: (context, index) {
        //     return Card(
        //       margin: EdgeInsets.symmetric(vertical: 10),
        //       elevation: 0,
        //       child: ListTile(
        //         onTap: () {},
        //         isThreeLine: true,
        //         leading: Container(
        //           color: Colors.grey[200],
        //           width: 80,
        //         ),
        //         title: Text(
        //           "Bismillah cars limited",
        //           style: ConstantsStyle().regularHeading,
        //         ),
        //         subtitle: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             SizedBox(
        //               height: 2,
        //             ),
        //             Text(
        //               "Bismillah cars limited",
        //               style: TextStyle(
        //                   color: ConstantColors().greyPrimary, fontSize: 15),
        //             ),
        //             SizedBox(
        //               height: 2,
        //             ),
        //             Text(
        //               "23/KA, New Eskaton Road, Moghbazar, Dhaka",
        //               style: TextStyle(
        //                   color: ConstantColors().greySecondary, fontSize: 15),
        //             ),
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        // ),
      ),
    );
  }
}
