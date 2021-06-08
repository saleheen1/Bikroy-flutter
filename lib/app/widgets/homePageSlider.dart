import 'package:bikroy/meta/screens/singleProduct.dart';
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
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SingleProduct()));
      },
      child: Stack(
        children: [
          Container(
              height: 210,
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
                      "https://cdn.shortpixel.ai/client/q_glossy,ret_img,w_1024,h_529/https://www.powproductphotography.com/app/uploads/2020/03/background-color-change-1024x529.jpg",
                      fit: BoxFit.cover,
                    ),
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
