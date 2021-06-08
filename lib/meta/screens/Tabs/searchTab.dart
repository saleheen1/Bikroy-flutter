import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/customInput.dart';
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

  getColor(index) {
    if (index == 0) {
      return Color(0xff00C7FF);
    } else if (index == 1) {
      return Color(0xffFE9327);
    } else if (index == 2) {
      return Color(0xff782ECA);
    } else if (index == 3) {
      return Color(0xffFF3E34);
    } else {
      return Color(0xffFF544B);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomInput(
              hintText: "Search",
              onChanged: (value) {
                _searchEditingController.text = value;
              },
              onSubmitted: (value) {},
              focusNode: _searchFocusNode),
          //location row
          Row(
            children: [
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: ConstantColors().primaryColor,
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
                ),
              ),
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                ),
              )
            ],
          ),
          // Divider(height: 0, thickness: 1, color: ConstantColors().dividerColor),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Container(
                child: GridView.count(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 3 / 2,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: List.generate(4, (index) {
                      return Material(
                        borderRadius: BorderRadius.circular(10),
                        color: getColor(index),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.work_outline,
                                color: Colors.white,
                                size: 29,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                getText(index),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
