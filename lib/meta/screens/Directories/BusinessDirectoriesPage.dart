import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Directories/businessDirHelper.dart';
import 'package:bikroy/meta/screens/Search/servicesSecondPage.dart';
import 'package:flutter/material.dart';

class BusinessDirectoriesPage extends StatelessWidget {
  const BusinessDirectoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Helper()
        //     .whiteHeroArea("Business Directories", false, Colors.grey, context),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 20),
          child: BusinessDirHelper().heroTitle("Business Directories",
              "Products / Services for Buy & Sell", 'assets/images/bcase.png'),
        ),
        Divider(
          thickness: .7,
          height: 0,
        ),
        Helper().buySellCategory(context),
        // Helper().businessDirectoryList(() {
        //   Navigator.push(context,
        //       MaterialPageRoute(builder: (context) => ServicesSecondPage()));
        //   // Navigator.push(
        //   //     context,
        //   //     MaterialPageRoute(
        //   //         builder: (context) => SecondBusinessDirectoriesPage()));
        // }),
      ],
    );
  }
}
