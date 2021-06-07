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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: CustomInput(
              hintText: "Search",
              onChanged: (value) {
                _searchEditingController.text = value;
              },
              onSubmitted: (value) {},
              focusNode: _searchFocusNode),
        ),
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
        Divider(height: 0, thickness: 1, color: ConstantColors().dividerColor),
        Container(
          color: Color(0xffF0F0F0),
          child: GridView.count(
              scrollDirection: Axis.vertical,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 3 / 2,
              crossAxisCount: 2,
              shrinkWrap: true,
              children: List.generate(6, (index) {
                return Material(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.car_rental,
                          color: ConstantColors().primaryColor,
                          size: 29,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Electronics ${index + 1}",
                          style: TextStyle(
                              fontSize: 16,
                              color: ConstantColors().greyPrimary,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                );
              })),
        ),
      ],
    );
  }
}
