import 'package:bikroy/core/services/helper.dart';
import 'package:flutter/material.dart';

class ResumeView extends StatelessWidget {
  const ResumeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Helper().heroArea("No Resume Found")],
      ),
    );
  }
}
