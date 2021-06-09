import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:flutter/material.dart';

class Advertising extends StatelessWidget {
  const Advertising({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "Advertising With Trade Bangla",
                style: TextStyle(
                    color: ConstantColors().greyPrimary,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Our general service of posting an ad remains free on ',
                  style: TextStyle(
                    height: 1.7,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Color(0xff646464),
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Trade Bangla, ',
                      style: TextStyle(
                        color: Color(0xff0d47a1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                        text:
                            'we also offer extra options for businesses who want to reach new customers fast and easily. With our banner advertising opportunities, you can target local clients directly and advertise your Product or Service efficiently.'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Please See the attach File Financial Proposal (Click Here).",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xff0d47a1),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "For Advertising With Us. Call: 01844047000",
                textAlign: TextAlign.center,
                style: ConstantsStyle().paraGraphStyle,
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
