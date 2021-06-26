import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/categoryList.dart';
import 'package:bikroy/core/Controllers/categoryController.dart';
import 'package:bikroy/core/Controllers/sub_category_Controller.dart';
import 'package:bikroy/core/Models/categoryModel.dart';
import 'package:bikroy/core/Services/categoryService.dart';
import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/core/Services/sub_category_Services.dart';
import 'package:bikroy/meta/screens/Categories/SubCategoryPage.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var category = Provider.of<CategoryModel>(context);

    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Helper().heroArea("Categories", true, Colors.white, context),
              FutureBuilder<CategoryModel>(
                  future: CategoryController().getCategoryData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 6),
                        child: ListView.builder(
                          padding: EdgeInsets.all(0),
                          itemCount: snapshot.data!.data.data.length,
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            // final item = items[index];

                            return Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  // SubCategoryServices().setCategoryId(
                                  //     snapshot.data!.data.data[index].id);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SubCategoryPage(
                                                subCategoryName: snapshot.data!
                                                    .data.data[index].name,
                                              ),
                                          settings: RouteSettings(
                                            arguments: snapshot
                                                .data!.data.data[index].id,
                                          )));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: ConstantColors()
                                                  .dividerColor))),
                                  padding: EdgeInsets.symmetric(vertical: 14),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        snapshot.data!.data.data[index].name,
                                        style: TextStyle(
                                            fontSize: 15,
                                            height: 1.7,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                ConstantColors().greyPrimary),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.arrow_forward_ios_outlined,
                                              size: 18,
                                              color:
                                                  ConstantColors().greyPrimary,
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
        )

        // body: CategoryList(
        //   appBarTitle: "Categories",
        //   categoryName: "Agriculture Products",
        //   whenPressed: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => AllPosts()));
        //     // Navigator.push(
        //     //     context,
        //     //     PageTransition(
        //     //         child: AllPosts(), type: PageTransitionType.rightToLeft));
        //   },
        // ),
        );
  }
}
