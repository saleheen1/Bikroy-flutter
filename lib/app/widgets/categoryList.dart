import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/actionBar.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  final String? appBarTitle;
  final Function() whenPressed;
  final String categoryName;

  const CategoryList(
      {Key? key,
      this.appBarTitle,
      required this.whenPressed,
      required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          ActionBar(
            title: "$appBarTitle",
            hasBackArrow: false,
          ),
          ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 7,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              // final item = items[index];

              return Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: whenPressed,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: ConstantColors().dividerColor))),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.handyman_rounded,
                              color: ConstantColors().primaryColor,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "$categoryName ${index + 1}",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: ConstantColors().greyPrimary),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 18,
                                color: ConstantColors().greyPrimary,
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
          )
        ],
      ),
    );
  }
}
