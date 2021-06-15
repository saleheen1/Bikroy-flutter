import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Search/servicesSecondPage.dart';
import 'package:flutter/material.dart';

class BusinessDirectoriesPage extends StatelessWidget {
  const BusinessDirectoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Helper()
            .whiteHeroArea("Business Directories", false, Colors.grey, context),
        Divider(
          thickness: .7,
          height: 0,
        ),
        Helper().businessDirectoryList(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ServicesSecondPage()));
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => SecondBusinessDirectoriesPage()));
        }),
      ],
    );
  }
}
