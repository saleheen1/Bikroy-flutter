import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/core/Controllers/register-controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final bool outlineBtn;
  final bool hasIcon;
  final IconData icon;
  final Color color;
  final bool isLoading;

  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.outlineBtn = false,
    this.hasIcon = false,
    this.icon = Icons.ac_unit,
    required this.color,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: Container(
            width: double.infinity,
            // padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            decoration: BoxDecoration(
                color: outlineBtn ? Colors.transparent : color,
                border: Border.all(
                  color: color,
                  width: .8,
                ),
                borderRadius: BorderRadius.circular(6)),

            child: Stack(
              children: [
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      hasIcon
                          ? Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Icon(
                                icon,
                                color: Colors.white,
                              ),
                            )
                          : Container(),
                      Text(
                        text,
                        style: TextStyle(
                            color: outlineBtn
                                ? ConstantColors().primaryColor
                                : Colors.white),
                      ),
                      // Consumer<RegisterController>(
                      //     builder: (context, value, child) {
                      //   return value.isloading == true
                      //       ? Center(
                      //           child: SizedBox(
                      //             height: 36,
                      //             child: CircularProgressIndicator(
                      //               color: Colors.white,
                      //             ),
                      //           ),
                      //         )
                      //       : Text(
                      //           text,
                      //           style: TextStyle(
                      //               color: outlineBtn
                      //                   ? ConstantColors().primaryColor
                      //                   : Colors.white),
                      //         );
                      // })
                      // Visibility(
                      //   visible: context.watch<RegisterController>().isloading
                      //       ? false
                      //       : true,
                      //   child: Text(
                      //     text,
                      //     style: TextStyle(
                      //         color: outlineBtn
                      //             ? ConstantColors().primaryColor
                      //             : Colors.white),
                      //   ),
                      // ),
                      // Visibility(
                      //     visible: context.watch<RegisterController>().isloading
                      //         ? true
                      //         : false,
                      //     child: Center(
                      //       child: SizedBox(
                      //         height: 36,
                      //         child: CircularProgressIndicator(
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
