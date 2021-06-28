import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/core/Controllers/businessDir-controller.dart';
import 'package:bikroy/core/Models/businessDir-Model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Directories/businessDirHelper.dart';
import 'package:bikroy/meta/screens/Directories/sub-businessDir.dart';
import 'package:bikroy/meta/screens/Posts/postHelper.dart';
import 'package:flutter/material.dart';

class BusinessDirPage extends StatelessWidget {
  const BusinessDirPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Helper()
          //     .whiteHeroArea("Business Directories", false, Colors.grey, context),
          Container(
            padding: EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 20),
            child: BusinessDirHelper().heroTitle(
                "Business Directories",
                "Products / Services for Buy & Sell",
                'assets/images/bcase.png'),
          ),
          Divider(
            thickness: .7,
            height: 0,
          ),

          //Business Directories category
          FutureBuilder<BusinessDirModel>(
            future: BusinessDirController().getCategoryData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
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
                      children: List.generate(snapshot.data!.data.data.length,
                          (index) {
                        return Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SubBusinessDir(
                                            subBusinessDir_name: snapshot
                                                .data!.data.data[index].name,
                                          ),
                                      settings: RouteSettings(
                                        arguments:
                                            snapshot.data!.data.data[index].id,
                                      )));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  height: 30,
                                  width: 60,
                                  child: Image.network(
                                    PostHelper().getCategoryImage(index),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 15),
                                  child: Text(
                                    snapshot.data!.data.data[index].name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        height: 1.4,
                                        color: ConstantColors().greyPrimary,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
                );
              } else {
                return Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Center(child: Helper().showLoading()));
              }
            },
          ),
        ],
      ),
    );
  }
}
