import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Posts/postDetailsPage.dart';
import 'package:bikroy/meta/screens/Search/searchPageHelper.dart';
import 'package:flutter/material.dart';

//showing all post //active

class AllPosts extends StatelessWidget {
  const AllPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Helper().heroArea("Auto vehicles", true, Colors.white, context),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  children: [
                    SearchHelper().locationFilter(),
                    Divider(
                      thickness: .6,
                      height: 35,
                    ),
                    for (var i = 0; i < 7; i++)
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostDetailsPage()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 28),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Image.network(
                                    "https://images.unsplash.com/photo-1550355291-bbee04a92027?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2FyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                                    fit: BoxFit.cover,
                                  ),
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
                                            style:
                                                ConstantsStyle().regularHeading,
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "Architect Engineering",
                                            style: TextStyle(
                                                color: ConstantColors()
                                                    .greyPrimary,
                                                fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "23/KA, Moghbazar, Dhaka",
                                            style: TextStyle(
                                                color: ConstantColors()
                                                    .greySecondary,
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
          ),
        ],
      ),
    );
  }
}
