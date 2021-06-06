import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/actionBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          ActionBar(
            title: "Post Ad",
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
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: ConstantColors().dividerColor))),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.handyman_rounded,
                          color: ConstantColors().primaryColor,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Sell an item",
                          style: TextStyle(
                              fontSize: 15,
                              color: ConstantColors().greyPrimary),
                        ),
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
