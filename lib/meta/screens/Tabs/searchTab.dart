import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/customInput.dart';
import 'package:bikroy/core/services/helper.dart';
import 'package:bikroy/meta/screens/Categories/categoriesPage.dart';
import 'package:bikroy/meta/screens/Directories/2ndBusinessDirectoriesPage.dart';
import 'package:bikroy/meta/screens/Posts/allPosts.dart';
import 'package:bikroy/meta/screens/Search/servicesSecondPage.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  TextEditingController _searchEditingController = TextEditingController();

  //when user writes email and presses enter then we want to move the focus to password automatically
//that's why we need focusnode
  late FocusNode _searchFocusNode;
  @override
  void initState() {
    _searchFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  getText(index) {
    if (index == 0) {
      return "All Ads";
    } else if (index == 1) {
      return "Directory";
    } else if (index == 2) {
      return "Jobs in BD";
    } else if (index == 3) {
      return "Overseas Jobs";
    } else {
      return "no data";
    }
  }

  // getColor(index) {
  //   if (index == 0) {
  //     return Color(0xff00C7FF);
  //   } else if (index == 1) {
  //     return Color(0xffFE9327);
  //   } else if (index == 2) {
  //     return Color(0xff782ECA);
  //   } else if (index == 3) {
  //     return Color(0xffFF3E34);
  //   } else {
  //     return Color(0xffFF544B);
  //   }
  // }

  getColor(index) {
    if (index == 0) {
      return Color(0xff197B72);
    } else if (index == 1) {
      return Color(0xff19537B);
    } else if (index == 2) {
      return Color(0xff69197B);
    } else if (index == 3) {
      return Color(0xff47901E);
    } else {
      return Color(0xffDD811C);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          //location row
          Row(
            children: [
              Material(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 19,
                        color: ConstantColors().greyPrimary,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text("Dhaka",
                          style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.w600,
                              color: ConstantColors().greyPrimary))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  splashColor: Colors.transparent,
                  // hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Change location",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: ConstantColors().primaryColor))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          CustomInput(
              hintText: "Search",
              onChanged: (value) {
                _searchEditingController.text = value;
              },
              onSubmitted: (value) {},
              focusNode: _searchFocusNode),

          // Divider(height: 0, thickness: 1, color: ConstantColors().dividerColor),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Helper().buySellCategory(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ServicesSecondPage()));
              }),
            ],
          ),
        ],
      ),
    );
  }
}
