import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/core/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarCustom extends StatefulWidget {
  const AppbarCustom({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _AppbarCustomState createState() => _AppbarCustomState();
}

class _AppbarCustomState extends State<AppbarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        elevation: 0.6,
        backgroundColor: ConstantColors().primaryColor,
        // iconTheme: IconThemeData(color: ConstantColors().greyPrimary),
        brightness: Brightness.dark,
        actions: [],
        title: Text(
          widget.title,
          overflow: TextOverflow.ellipsis,
        ));
  }
}
