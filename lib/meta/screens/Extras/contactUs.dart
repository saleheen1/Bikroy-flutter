import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "Contact Us",
                style: TextStyle(
                    color: ConstantColors().greyPrimary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "For Advertising With Call: 01844047001, 09638782205",
                textAlign: TextAlign.center,
                style: ConstantsStyle().paraGraphStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Mail to : support@tradebangla.com.bd",
                textAlign: TextAlign.center,
                style: ConstantsStyle().paraGraphStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
