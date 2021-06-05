import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/actionBar.dart';
import 'package:bikroy/app/widgets/homePageSlider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        ActionBar(title: "bikroy", hasBackArrow: false, showCart: false),
        Container(
          height: 1,
          width: double.infinity,
          color: ConstantColors().dividerColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 23,
                          color: ConstantColors().primaryColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Dhaka",
                          style: TextStyle(
                              fontSize: 15,
                              color: ConstantColors().greyPrimary),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 1,
              color: ConstantColors().dividerColor,
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.tag,
                          color: ConstantColors().primaryColor,
                          size: 23,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 15,
                              color: ConstantColors().greyPrimary),
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
        //product grid list
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: GridView.count(
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 4 / 6.5,
            children: List.generate(6, (index) {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                              "https://images.unsplash.com/photo-1572635196243-4dd75fbdbd7f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80",
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Product name",
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
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
