import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/homePageSlider.dart';
import 'package:bikroy/meta/screens/Categories/categoriesPage.dart';
import 'package:flutter/material.dart';

import '../singleProduct.dart';

class SliverPage extends StatefulWidget {
  const SliverPage({Key? key}) : super(key: key);

  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 290.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: HomePageSlider(),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(15.0),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
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
                                            builder: (context) =>
                                                CategoriesPage()));
                                    // Navigator.push(
                                    //     context,
                                    //     PageTransition(
                                    //         child: CategoriesPage(),
                                    //         type: PageTransitionType.rightToLeft));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            "Category",
                                            style:
                                                ConstantsStyle().paraGraphStyle,
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
                        Divider(
                          height: 0,
                        )
                      ],
                    ),
                  ),
                )),
          ];
        },
        body: Container(
          padding: EdgeInsets.all(20),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 170,
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
                        "Samsung Galaxy Tab",
                        style: ConstantsStyle().productTitleHeading,
                      ),
                      Text(
                        "Elephant Road",
                        style: ConstantsStyle().paraGraphStyle,
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
        ),
      ),
    );
  }
}
