import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/Controllers/shopDetails-controller.dart';
import 'package:bikroy/core/Models/shopDetails-Model.dart';
import 'package:bikroy/core/helper.dart';
import 'package:bikroy/meta/screens/Directories/DirWidgets/descriptionFromHtml.dart';
import 'package:bikroy/meta/screens/Directories/DirWidgets/shopDetails_list.dart';
import 'package:bikroy/meta/screens/Directories/businessDirHelper.dart';
import 'package:flutter/material.dart';

class ShopDetailsPage extends StatefulWidget {
  const ShopDetailsPage({Key? key, required this.link}) : super(key: key);

  final String link;

  @override
  _ShopDetailsPageState createState() => _ShopDetailsPageState();
}

class _ShopDetailsPageState extends State<ShopDetailsPage>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  final List<Widget> myTabs = [
    Tab(text: 'About Organization'),
    Tab(text: 'Product or Services'),
  ];

  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_smoothScrollToTop);

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  _scrollListener() {
    if (fixedScroll) {
      _scrollController.jumpTo(0);
    }
  }

  _smoothScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: Duration(microseconds: 300),
      curve: Curves.ease,
    );

    // setState(() {
    //   fixedScroll = _tabController.index == 1;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<ShopDetailsModel>(
      future: ShopDetailsController().getShopDetails(widget.link),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (context, value) {
              return [
                SliverToBoxAdapter(
                    child: BusinessDirHelper().buildCarousel(
                        snapshot.data!.data.coverPhoto,
                        snapshot.data!.data.profilePhoto,
                        snapshot.data!.data.name,
                        context)),
                SliverToBoxAdapter(
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 25),
                    indicatorPadding: EdgeInsets.only(left: 25),
                    indicatorColor: ConstantColors().primaryColor,
                    controller: _tabController,
                    labelColor: ConstantColors().primaryColor,
                    isScrollable: true,
                    tabs: myTabs,
                  ),
                ),
              ];
            },
            body: Container(
              child: TabBarView(
                // physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(snapshot.data!.data.title,
                            style: ConstantsStyle().regularHeading),
                        SizedBox(height: 7),

                        //shop description
                        DescFromHtml(
                            description: snapshot.data!.data.description),

                        Divider(),
                        NotificationListener<OverscrollIndicatorNotification>(
                            onNotification: (overscroll) {
                              overscroll.disallowGlow();
                              return true;
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  ShopDetailsList(
                                    detailsKey: "Open hour:",
                                    detailsValue: snapshot.data!.data.openHour,
                                  ),
                                  ShopDetailsList(
                                    detailsKey: "Address:",
                                    detailsValue: snapshot.data!.data.location,
                                  ),
                                  ShopDetailsList(
                                    detailsKey: "Mobile:",
                                    detailsValue:
                                        snapshot.data!.data.contactPhone,
                                  ),
                                  ShopDetailsList(
                                    detailsKey: "Email:",
                                    detailsValue:
                                        snapshot.data!.data.contactEmail,
                                  ),
                                  ShopDetailsList(
                                    detailsKey: "Website:",
                                    detailsValue: snapshot.data!.data.website,
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  //Second tab
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Text("Second tab"),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Helper().showLoading();
        }
      },
    ));
  }
}
