import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/Services/helper.dart';
import 'package:bikroy/meta/screens/Posts/postDetailsPage.dart';
import 'package:bikroy/meta/screens/Posts/postHelper.dart';
import 'package:bikroy/meta/screens/Search/searchPageHelper.dart';
import 'package:flutter/material.dart';

class AdsByCategory extends StatelessWidget {
  const AdsByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Helper().heroArea("Auto vehicles", true, Colors.white, context),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  children: [
                    SearchHelper().locationFilter(),
                    Divider(
                      thickness: .6,
                      height: 35,
                    ),

                    // for (var i = 0; i < 7; i++) PostHelper().postList(context),
                    FutureBuilder(builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text("title");
                      } else {
                        return Center(
                          child: LinearProgressIndicator(),
                        );
                      }
                    })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
