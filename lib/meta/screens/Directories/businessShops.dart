import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/Controllers/businessShops-controller.dart';
import 'package:bikroy/core/Models/businessShops-Model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Posts/postDetailsPage.dart';
import 'package:bikroy/meta/screens/Search/searchPageHelper.dart';
import 'package:flutter/material.dart';

class BusinessDirShops extends StatelessWidget {
  const BusinessDirShops(
      {Key? key,
      this.subBusinessType = "Shops",
      required this.subBusinessTypeID})
      : super(key: key);
  final String subBusinessType;
  final int subBusinessTypeID;

  @override
  Widget build(BuildContext context) {
    print("okay, here is the id $subBusinessTypeID");
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Helper().heroArea(subBusinessType, true, Colors.white, context),
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
                    FutureBuilder<BusinessShopsModel>(
                      future: BusinessShopsController()
                          .getBusinessShops(subBusinessTypeID),
                      builder: (context, snapshot) {
                        if (snapshot.hasData && snapshot.data != null) {
                          return ListView.builder(
                              padding: EdgeInsets.only(top: 10),
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: snapshot.data!.data.data.length,
                              shrinkWrap: true,
                              itemBuilder: (context, int index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PostDetailsPage()));
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 28),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                    //title
                                                    Text(
                                                      snapshot.data!.data
                                                          .data[index].title,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: ConstantsStyle()
                                                          .regularHeading,
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    //name
                                                    Text(
                                                      snapshot.data!.data
                                                          .data[index].name,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: TextStyle(
                                                          color:
                                                              ConstantColors()
                                                                  .greyPrimary,
                                                          fontSize: 15),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    //location
                                                    Text(
                                                      snapshot.data!.data
                                                          .data[index].location,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
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
                                );
                              });
                        } else {
                          return Helper().showLoading();
                        }
                      },
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
