import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHelper {
  getCategoryText(int index) {
    if (index == 0) {
      return "Electronics";
    } else if (index == 1) {
      return "Mobiles";
    } else if (index == 2) {
      return "Animals";
    } else if (index == 3) {
      return "Foods & Health";
    } else if (index == 4) {
      return "Jobs";
    } else {
      return "Watch";
    }
  }

  Widget homeCategory() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        child: Text(
                          getCategoryText(index),
                          style: ConstantsStyle().paraGraphStyle,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  //product grid list

  // Container(
  //   color: ConstantColors().secondaryColor,
  //   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
  //   margin: EdgeInsets.only(top: 10),
  //   child: Text(
  //     "See More",
  //     style: TextStyle(
  //         fontSize: 16,
  //         fontWeight: FontWeight.bold,
  //         color: Colors.white),
  //     textAlign: TextAlign.right,
  //   ),
  // ),

  //2nd Category List
  // SizedBox(
  //   height: 30,
  // ),
  // Text(
  //   "Clothing & Fashion",
  //   style: ConstantsStyle().regularHeading,
  // ),
  // Divider(
  //   height: 20,
  //   thickness: 1,
  // ),
  // SizedBox(
  //   height: 20,
  // ),
  // //product grid list
  // GridView.count(
  //   padding: EdgeInsets.zero,
  //   scrollDirection: Axis.vertical,
  //   mainAxisSpacing: 20,
  //   crossAxisSpacing: 20,
  //   physics: NeverScrollableScrollPhysics(),
  //   crossAxisCount: 2,
  //   shrinkWrap: true,
  //   childAspectRatio: 4 / 6.5,
  //   children: List.generate(4, (index) {
  //     return InkWell(
  //       onTap: () {
  //         Navigator.push(
  //             context,
  //             MaterialPageRoute(
  //                 builder: (context) => SingleProduct()));
  //       },
  //       child: Container(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Container(
  //               height: 170,
  //               width: double.infinity,
  //               child: Container(
  //                 child: ClipRRect(
  //                   borderRadius: BorderRadius.circular(12),
  //                   child: Image.network(
  //                       "https://images.unsplash.com/photo-1532413992378-f169ac26fff0?ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXRodW1ibmFpbHx8MTA1NzA2OTd8fGVufDB8fHx8&ixlib=rb-1.2.1&dpr=1&auto=format&fit=crop&w=291.2&q=60",
  //                       fit: BoxFit.cover),
  //                   // child: Image.network(
  //                   //     "https://cdn.pixabay.com/photo/2016/02/02/14/42/bank-1175430__340.png",
  //                   //     fit: BoxFit.cover),
  //                 ),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 12,
  //             ),
  //             Text(
  //               "Exclusive Men T-shirt",
  //               style: ConstantsStyle().productTitleHeading,
  //             ),
  //             Text(
  //               "Savar, Dhaka",
  //               style: ConstantsStyle().paraGraphStyle,
  //             ),
  //             SizedBox(
  //               height: 6,
  //             ),
  //             Text(
  //               "Tk 320",
  //               style: ConstantsStyle().priceStyle,
  //             ),
  //           ],
  //         ),
  //       ),
  //     );
  //   }),
  // )
}
