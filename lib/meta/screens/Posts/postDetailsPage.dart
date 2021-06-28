import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';

class PostDetailsPage extends StatefulWidget {
  const PostDetailsPage({Key? key}) : super(key: key);

  @override
  _PostDetailsPageState createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage>
    with SingleTickerProviderStateMixin {
  final bodyGlobalKey = GlobalKey();
  final List<Widget> myTabs = [
    Tab(text: 'About Organization'),
    Tab(text: 'Product or Services'),
  ];

  late TabController _tabController;
  late ScrollController _scrollController;
  late bool fixedScroll;

  Widget _buildCarousel() {
    return Stack(
      children: [
        Container(
          height: 280,
          width: double.infinity,
          child: Image.network(
            "https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 25,
          left: 25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
                child: Image.network(
                  "https://images.unsplash.com/photo-1545289414-1c3cb1c06238?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                "Sal Sa Beel Cars",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),

        //Back button
        Positioned(top: 35, left: 10, child: Helper().backButton(context)),
      ],
    );
  }

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
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, value) {
          return [
            // SliverOverlapAbsorber(
            //   handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            //   sliver: SliverSafeArea(
            //     top: false,
            //     sliver: SliverAppBar(
            //       snap: false,
            //     ),
            //   ),
            // ),
            SliverToBoxAdapter(child: _buildCarousel()),
            SliverToBoxAdapter(
              child: TabBar(
                // indicator: BoxDecoration(
                //     borderRadius: BorderRadius.circular(20),
                //     color: Colors.orange,

                //     ),
                labelPadding: EdgeInsets.only(left: 25),
                indicatorPadding: EdgeInsets.only(left: 25),
                indicatorColor: ConstantColors().primaryColor,
                // unselectedLabelStyle: TextStyle(
                //     color: Colors.grey,
                //     fontWeight: FontWeight.bold,
                //     fontSize: 14,
                //     fontFamily: 'poppins'),
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
                  children: [
                    Text(
                        "We believe business is not just for profit but for piety.",
                        style: ConstantsStyle().regularHeading),
                    SizedBox(height: 13),
                    Text(
                      "Fully function and running device. No problem at all. Price is negotiable. No scratch or dent. Super amoled display.",
                      style: ConstantsStyle().paraGraphStyle,
                    ),
                    Divider(
                      height: 40,
                    ),
                    NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (overscroll) {
                        overscroll.disallowGlow();
                        return true;
                      },
                      child: ListView.builder(
                        padding: EdgeInsets.all(0),
                        itemCount: 5,
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
                                    "Details ${index + 1}:",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ConstantColors().greyPrimary),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "description",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: ConstantColors().greyPrimary),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
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
      ),
    );
  }
}
