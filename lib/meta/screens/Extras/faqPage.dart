import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/core/services/helper.dart';
import 'package:bikroy/meta/screens/Extras/extraPageHelper.dart';
import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExtraPageHelper().headerTitle(context, "Frequently Ask Questions"),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  //question 1
                  ExtraPageHelper().faqQuestion(context, "How to Post an Ad?"),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Posting an ad Very easy! Simply click the ',
                      style: ExtraPageHelper().richTextStyle,
                      children: const <TextSpan>[
                        TextSpan(
                          text: '“Post Ads/ Jobs”, ',
                          style: TextStyle(
                            color: Color(0xff0d47a1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text:
                                'button and follow the instructions. If you are not already logged in, you will need to log in as the first step of posting your ad. Your ad will go live once it has been reviewed.'),
                      ],
                    ),
                  ),

                  //question 2
                  SizedBox(
                    height: 30,
                  ),

                  ExtraPageHelper()
                      .faqQuestion(context, "How to Delete an Ad?"),
                  Text(
                    "To delete an ad, please go to Profile > My ads page and click on the \"Delete ad\" option.",
                    style: ExtraPageHelper().richTextStyle,
                    textAlign: TextAlign.center,
                  ),

                  //question 3
                  SizedBox(
                    height: 30,
                  ),

                  ExtraPageHelper().faqQuestion(context, "How to edit an Ad?"),
                  Text(
                    "To edit an ad, please go to your Profile > My ads page and click on the \"Edit ad\" option.",
                    style: ExtraPageHelper().richTextStyle,
                    textAlign: TextAlign.center,
                  ),

                  //question 4
                  SizedBox(
                    height: 30,
                  ),

                  ExtraPageHelper().faqQuestion(
                      context, "How to Make free eCommerce website?"),
                  Text(
                    "Trade Bangla Provide Free eCommerce website in Bangladesh in Life time.  If you need Free eCommerce website Create an e-Shop Account & make a call to 01844047000",
                    style: ExtraPageHelper().richTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text("Demo e-Shop Link:",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    "www.bakejunction.tradebangla.com.bd",
                    style: TextStyle(
                      fontSize: 14,
                      color: ConstantColors().primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  //question 5
                  SizedBox(
                    height: 30,
                  ),

                  ExtraPageHelper()
                      .faqQuestion(context, "How to Make a Business Profile?"),
                  Text(
                    "First you need to go “My Account” on top bar Right site in the website. Select “Register” Button. Fill you Business Name, Mobile Number, Email ID & Select Account Type “Business Account”. After that Complete your Business Profile fill required field.",
                    style: ExtraPageHelper().richTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text("Demo Business Profile: ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    "www.tradebangla.com.bd/business/smart-software-inc",
                    style: TextStyle(
                      fontSize: 14,
                      color: ConstantColors().primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
