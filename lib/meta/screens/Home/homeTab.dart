import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/homePageSlider.dart';
import 'package:bikroy/app/widgets/priceRangeSlider.dart';
import 'package:bikroy/core/Models/ads_Model.dart';
import 'package:bikroy/core/Services/adsServices.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Categories/categoriesPage.dart';
import 'package:bikroy/meta/screens/Home/homeHelper.dart';
import 'package:bikroy/meta/screens/Posts/singleProduct.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 38,
          color: ConstantColors().deepPrimaryColor,
          width: double.infinity,
        ),
        //logo
        Container(
          height: 55,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(bottom: 19),
          decoration: BoxDecoration(
            color: ConstantColors().primaryColor,
          ),
          child: Container(
            height: 23,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo-white.png'),
                  fit: BoxFit.fitHeight),
            ),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
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
                    },
                    child: Container(
                      padding: const EdgeInsets.all(13.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.category_outlined,
                            color: ConstantColors().primaryColor,
                            size: 23,
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Flexible(
                            child: Text(
                              "Category",
                              style: ConstantsStyle().paraGraphStyle,
                            ),
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
              //filter button
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    showMaterialModalBottomSheet(
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return SingleChildScrollView(
                            controller: ModalScrollController.of(context),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 20),
                              // height: MediaQuery.of(context).size.height / 2,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // new or used
                                    Container(
                                      // width: MediaQuery.of(context).size.width - 170,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: CheckboxListTile(
                                              activeColor:
                                                  ConstantColors().primaryColor,
                                              contentPadding: EdgeInsets.all(0),
                                              title: Text(
                                                "New",
                                                style: ConstantsStyle()
                                                    .paraGraphStyle,
                                              ),
                                              value: context
                                                  .watch<HomeHelper>()
                                                  .isCheckedNew, //use watch when u are getting a value returned
                                              onChanged: (newValue) {
                                                context
                                                    .read<HomeHelper>()
                                                    .checkNewChanger(); //use read when you only want to fire a function
                                              },
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading, //  <-- leading Checkbox
                                            ),
                                          ),
                                          //used checkbox
                                          Expanded(
                                            child: CheckboxListTile(
                                              activeColor:
                                                  ConstantColors().primaryColor,
                                              contentPadding: EdgeInsets.all(0),
                                              title: Text(
                                                "Used",
                                                style: ConstantsStyle()
                                                    .paraGraphStyle,
                                              ),
                                              value: context
                                                  .watch<HomeHelper>()
                                                  .isCheckedUsed, //use watch when u are getting a value returned
                                              onChanged: (newValue) {
                                                context
                                                    .read<HomeHelper>()
                                                    .checkUsedChanger(); //use read when you only want to fire a function
                                              },
                                              controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading, //  <-- leading Checkbox
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //Price Range Slider
                                    PriceRangeSlider()
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 17, right: 25, bottom: 13, top: 13),
                    child: Icon(
                      EvaIcons.funnelOutline,
                      color: ConstantColors().primaryColor,
                      size: 23,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
//End of top logo and menu
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //     // margin: EdgeInsets.only(
              //     //   top: 12,
              //     // ),

              //     //slider
              //     child: HomeHelper()
              //         .topSlider(180, ConstantColors().secondaryColor)),
              HomePageSlider(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: HomeHelper().homeCategory()),
                    //category

                    // FutureBuilder<AdsModel>(
                    //     future: AdsServices().fetchAds(),
                    //     builder: (context, snapshot) {
                    //       if (snapshot.hasData) {
                    //         return Container(
                    //           child: GridView.count(
                    //             padding: EdgeInsets.zero,
                    //             scrollDirection: Axis.vertical,
                    //             mainAxisSpacing: 5,
                    //             crossAxisSpacing: 20,
                    //             physics: NeverScrollableScrollPhysics(),
                    //             crossAxisCount: 2,
                    //             shrinkWrap: true,
                    //             childAspectRatio: 4 / 6.5,
                    //             children: List.generate(
                    //                 snapshot.data!.adPost!.data!.length,
                    //                 (index) {
                    //               return InkWell(
                    //                 onTap: () {
                    //                   Navigator.push(
                    //                       context,
                    //                       MaterialPageRoute(
                    //                           builder: (context) => SingleAd(
                    //                               description: snapshot
                    //                                   .data!
                    //                                   .adPost!
                    //                                   .data![index]
                    //                                   .description,
                    //                               title: snapshot.data!.adPost!
                    //                                   .data![index].title,
                    //                               areaName: snapshot
                    //                                   .data!
                    //                                   .adPost!
                    //                                   .data![index]
                    //                                   .areaName,
                    //                               price: snapshot.data!.adPost!
                    //                                   .data![index].price,
                    //                               postedBy: snapshot
                    //                                   .data!
                    //                                   .adPost!
                    //                                   .data![index]
                    //                                   .creator)));
                    //                 },
                    //                 child: Container(
                    //                   child: Column(
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     children: [
                    //                       Container(
                    //                         height: 170,
                    //                         width: double.infinity,
                    //                         child: Container(
                    //                           child: ClipRRect(
                    //                             borderRadius:
                    //                                 BorderRadius.circular(12),
                    //                             child: Image.network(
                    //                                 "https://images.unsplash.com/photo-1556228720-195a672e8a03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                    //                                 fit: BoxFit.cover),
                    //                             // child: Image.network(
                    //                             //     "https://cdn.pixabay.com/photo/2016/02/02/14/42/bank-1175430__340.png",
                    //                             //     fit: BoxFit.cover),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       SizedBox(
                    //                         height: 12,
                    //                       ),
                    //                       //price & discount row
                    //                       Row(
                    //                         mainAxisAlignment:
                    //                             MainAxisAlignment.spaceBetween,
                    //                         children: [
                    //                           Text(
                    //                             "${snapshot.data!.adPost!.data![index].price.toString()} tk",
                    //                             style:
                    //                                 ConstantsStyle().priceStyle,
                    //                           ),
                    //                           Container(
                    //                             padding: EdgeInsets.symmetric(
                    //                                 horizontal: 9, vertical: 2),
                    //                             decoration: BoxDecoration(
                    //                               color: ConstantColors()
                    //                                   .secondaryColor
                    //                                   .withOpacity(0.1),
                    //                               borderRadius:
                    //                                   BorderRadius.circular(50),
                    //                               // border: Border.all(color: Color(0xff392361)),
                    //                             ),
                    //                             child: Text(
                    //                               "5% off",
                    //                               style: TextStyle(
                    //                                   color: ConstantColors()
                    //                                       .secondaryColor,
                    //                                   fontWeight:
                    //                                       FontWeight.w600),
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       SizedBox(
                    //                         height: 6,
                    //                       ),
                    //                       Text(
                    //                         snapshot.data!.adPost!.data![index]
                    //                             .title,
                    //                         overflow: TextOverflow.ellipsis,
                    //                         maxLines: 2,
                    //                         style: ConstantsStyle()
                    //                             .productTitleHeading,
                    //                       ),
                    //                       // Text(
                    //                       //   "Elephant Road",
                    //                       //   overflow: TextOverflow.ellipsis,
                    //                       //   style:
                    //                       //       ConstantsStyle().paraGraphStyle,
                    //                       // ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               );
                    //             }),
                    //           ),
                    //         );
                    //       } else {
                    //         return Container(
                    //           margin: EdgeInsets.only(top: 30),
                    //           child: Helper().showLoading(),
                    //         );
                    //       }
                    //     })
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
