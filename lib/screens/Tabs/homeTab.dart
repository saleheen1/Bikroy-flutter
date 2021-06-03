import 'package:bikroy/Constants/Constantcolors.dart';
import 'package:bikroy/Constants/ConstantsStyle.dart';
import 'package:bikroy/screens/Home/homePageSlider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.gps_fixed,
                          color: ConstantColors().primaryColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Dhaka",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Material(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.category,
                          color: ConstantColors().primaryColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Category",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        HomePageSlider(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 4 / 6.5,
            children: List.generate(6, (index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.network(
                        "https://images.unsplash.com/photo-1530630458144-014709e10016?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Prodcut name",
                    style: ConstantsStyle().regularHeading,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Tk 200",
                    style: ConstantsStyle().priceStyle,
                  ),
                ],
              );
            }),
          ),
        )
      ],
    );
  }
}
