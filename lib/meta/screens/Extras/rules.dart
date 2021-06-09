import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/core/services/helper.dart';
import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "Using Rules",
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
                  text:
                      'Users are responsible for ensuring that advertising content, text, images & graphics uploaded for inclusion on ',
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
                    TextSpan(text: 'complies with all related laws.'),
                    TextSpan(
                      text: 'Trade Bangla, ',
                      style: TextStyle(
                        color: Color(0xff0d47a1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Trade Bangla, ',
                      style: TextStyle(
                        color: Color(0xff0d47a1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                        text:
                            'assumes no responsibility for any illegality or any inaccuracy of the Content.'),
                  ],
                ),
              ),

              //2nd Para
              SizedBox(
                height: 20,
              ),

              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text:
                      'The user guarantees that his or her Content do not infringe any copyright, intellectual property rights or other rights of any person or entity, and agrees to release ',
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
                            ' from all obligations, liabilities and claims arising in connection with the use of  the service.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
