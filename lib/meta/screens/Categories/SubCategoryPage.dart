import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/categoryList.dart';
import 'package:bikroy/core/Controllers/sub_category_Controller.dart';
import 'package:bikroy/core/Models/subCategoryModel.dart';
import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/core/Services/sub_category_Services.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SubCategoryPage extends StatelessWidget {
  const SubCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categoryId = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Helper().heroArea("Sub Category", true, Colors.white, context),
            FutureBuilder<SubCategoryModel>(
                future: SubCategoryServices().fetchCategory(categoryId),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data);
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 6),
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: snapshot.data!.allData.data.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          // final item = items[index];

                          return Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SubCategoryPage()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: ConstantColors()
                                                .dividerColor))),
                                padding: EdgeInsets.symmetric(vertical: 17),
                                child: Row(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Icon(Helper().getIcon(index),
                                        //     color: Helper().getColor(index)),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              snapshot.data!.allData.data[index]
                                                  .subCategoryName,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: ConstantColors()
                                                      .greyPrimary),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            // Text(
                                            //   "Agro Products Services, Poultry & Dairy",
                                            //   style: TextStyle(
                                            //       fontSize: 13,
                                            //       color: ConstantColors().greySecondary),
                                            // ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 18,
                                            color: ConstantColors().greyPrimary,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  } else {
                    return Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Center(child: LinearProgressIndicator()));
                  }
                }),
          ],
        ),
      ),
    );
  }
}
