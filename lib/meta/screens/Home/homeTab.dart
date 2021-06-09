import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/actionBar.dart';
import 'package:bikroy/app/widgets/homePageSlider.dart';
import 'package:bikroy/meta/screens/Categories/categoriesPage.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:bikroy/meta/screens/singleProduct.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   height: 100,
        //   width: double.infinity,
        //   color: ConstantColors().primaryColor,
        // ),
        // Row(
        //   children: [
        //     Expanded(
        //       child: SizedBox(
        //         height: 70,
        //         child: ListView.builder(
        //           shrinkWrap: true,
        //           scrollDirection: Axis.horizontal,
        //           itemCount: 4,
        //           itemBuilder: (context, index) {
        //             return Container(
        //               alignment: Alignment.center,
        //               decoration:
        //                   BoxDecoration(border: Border.all(color: Colors.grey)),
        //               child: Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: 15, vertical: 5),
        //                 child: Text(
        //                   "Jobs in Bangladesh",
        //                   style: ConstantsStyle().paraGraphStyle,
        //                 ),
        //               ),
        //             );
        //           },
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        SizedBox(
          height: 50,
        ),
        // ActionBar(title: "TradeBangla", hasBackArrow: false, showCart: false),
        Container(
          height: 1,
          width: double.infinity,
          color: ConstantColors().dividerColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 23,
                          color: ConstantColors().primaryColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Dhaka",
                          style: ConstantsStyle().paraGraphStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 1,
              color: ConstantColors().dividerColor,
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CategoriesPage()));
                    // Navigator.push(
                    //     context,
                    //     PageTransition(
                    //         child: CategoriesPage(),
                    //         type: PageTransitionType.rightToLeft));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.filter_alt_outlined,
                          color: ConstantColors().primaryColor,
                          size: 23,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Flexible(
                          child: Text(
                            "Directory",
                            style: ConstantsStyle().paraGraphStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        HomePageSlider(),
        //product grid list
        Container(
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 4 / 6.5,
            children: List.generate(6, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SingleProduct()));
                },
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                                "https://images.unsplash.com/photo-1556228720-195a672e8a03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                                fit: BoxFit.cover),
                            // child: Image.network(
                            //     "https://cdn.pixabay.com/photo/2016/02/02/14/42/bank-1175430__340.png",
                            //     fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Product name",
                        style: ConstantsStyle().regularHeading,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Tk 200",
                        style: ConstantsStyle().priceStyle,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
