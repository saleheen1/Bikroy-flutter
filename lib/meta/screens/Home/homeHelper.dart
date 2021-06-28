import 'package:bikroy/meta/screens/Posts/singleProduct.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHelper with ChangeNotifier {
  bool _checkedNew = true;
  bool _checkedUsed = false;
  bool _brand1Checked = false;
  // var rangeStartvalue;
  // var rangeEndvalue;

  bool get isCheckedNew => _checkedNew;
  bool get isCheckedUsed => _checkedUsed;
  bool get isbrand1Checked => _brand1Checked;

  void checkNewChanger() {
    _checkedNew = !_checkedNew;
    notifyListeners();
  }

  void checkUsedChanger() {
    _checkedUsed = !_checkedUsed;
    notifyListeners();
  }

  void brand1CheckedChanger() {
    _brand1Checked = !_brand1Checked;
    notifyListeners();
  }

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
                          border: Border.all(color: Color(0xffdedede)),
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

  Widget topSlider(double height, Color color) {
    return CarouselSlider(
      options: CarouselOptions(
        height: height,
        autoPlay: true,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SingleAd(
                            description: "full new condition, no scratch",
                            title: "Samsung galaxy s9 full new",
                            areaName: "Panthapath",
                            price: 6900,
                            postedBy: "saleheen")));
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1541443131876-44b03de101c5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGNhcnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                        ),
                        fit: BoxFit.cover)),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
