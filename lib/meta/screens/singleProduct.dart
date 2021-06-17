import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/material.dart';

class SingleAd extends StatelessWidget {
  const SingleAd(
      {Key? key,
      required this.description,
      required this.title,
      required this.areaName,
      required this.price,
      required this.postedBy})
      : super(key: key);

  final String description;
  final String title;
  final String areaName;
  final int price;
  final String postedBy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // slider
            Container(
              height: 280,
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
                    title,
                    style: TextStyle(
                        fontSize: 25,
                        color: ConstantColors().headingColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  //price
                  Text(
                    "$price Tk",
                    style: TextStyle(
                        fontSize: 22,
                        color: ConstantColors().primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: ConstantColors().greyPrimary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            "3 hours ago",
                            style: ConstantsStyle().paraGraphStyle,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: ConstantColors().greyPrimary,
                            size: 21,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            areaName,
                            style: ConstantsStyle().paraGraphStyle,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  //userName
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.perm_identity_sharp,
                            color: ConstantColors().greyPrimary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            postedBy,
                            style: ConstantsStyle().paraGraphStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    height: 25,
                    thickness: .7,
                  ),
                  //product conditons and desc
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 18, 0, 8),
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: 7,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          // final item = items[index];

                          return Container(
                            margin: EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Condition:",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ConstantColors().greyPrimary),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "Used",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ConstantColors().greyPrimary),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      )),
                  Text("Description", style: ConstantsStyle().regularHeading),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: ConstantsStyle().paraGraphStyle,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
