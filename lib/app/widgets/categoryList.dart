import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/core/Services/helper.dart';
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
    return Column(
      children: [
        Helper().heroArea("Categories", true, Colors.white, context),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
          child: ListView.builder(
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
                    padding: EdgeInsets.symmetric(vertical: 17),
                    child: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon(Helper().getIcon(index),
                            //     color: Helper().getColor(index)),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "$categoryName ${index + 1}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: ConstantColors().greyPrimary),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                              ],
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
          ),
        ),
      ],
    );
  }
}
