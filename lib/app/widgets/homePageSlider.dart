import 'package:bikroy/meta/screens/Posts/singleProduct.dart';
import 'package:flutter/material.dart';

class HomePageSlider extends StatefulWidget {
  const HomePageSlider({Key? key}) : super(key: key);

  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<HomePageSlider> {
  @override
  Widget build(BuildContext context) {
    // int _selectedSlide = 0;
    return InkWell(
      onTap: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => SingleProduct()));
      },
      child: Stack(
        children: [
          Container(
              height: 200,
              width: double.infinity,
              // height: 200,
              child: PageView(
                // onPageChanged: (num) {
                //   setState(() {
                //     _selectedSlide = num;
                //   });
                // },
                children: [
                  for (var i = 0; i < 3; i++)
                    Image.network(
                      "https://images.unsplash.com/photo-1562273138-f46be4ebdf33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ),
                  // Image.network(
                  //   "https://images.unsplash.com/photo-1532413992378-f169ac26fff0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzd8fHByb2R1Y3R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                  //   fit: BoxFit.cover,
                  // ),
                ],
              )),

          // Positioned(
          //   bottom: 30,
          //   left: 0,
          //   right: 0,
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       for (var i = 0; i < 3; i++)
          //         AnimatedContainer(
          //           duration: Duration(milliseconds: 450),
          //           curve: Curves.easeOutCubic,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(50),
          //             color:
          //                 _selectedSlide == i ? Colors.white : Colors.grey[400],
          //           ),
          //           width: _selectedSlide == i ? 15 : 6,
          //           height: 7,
          //           margin: EdgeInsets.symmetric(horizontal: 5),
          //         )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
