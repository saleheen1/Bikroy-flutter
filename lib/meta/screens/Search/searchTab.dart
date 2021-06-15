import 'package:bikroy/app/widgets/customInput.dart';
import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Search/searchPageHelper.dart';
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
          SearchHelper().locationFilter(),
          SizedBox(
            height: 25,
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
            height: 4,
          ),
          Column(
            children: [
              Helper().buySellCategory(() {
                // SearchHelper().modal(context);
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
