import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/customButton.dart';
import 'package:bikroy/app/widgets/customInput.dart';
import 'package:bikroy/meta/screens/Authentications/loginPage.dart';
import 'package:bikroy/meta/screens/Home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>
    with SingleTickerProviderStateMixin {
  late FocusNode focusNode;

  AnimationController? _controller;
  Animation? _animation;

  String dropdownValue = 'Select Account Type';

  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 300.0, end: 50.0).animate(_controller!)
      ..addListener(() {
        setState(() {});
      });
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        _controller!.forward();
      } else {
        _controller!.reverse();
      }
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    _controller!.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Container(
                  child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(bottom: 70, top: 50),
                  //   child: Container(
                  //     height: 35,
                  //     decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             image: AssetImage('assets/images/logo.png'),
                  //             fit: BoxFit.fitHeight)),
                  //   ),
                  // ),

                  //Sign up text
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50, top: 50),
                    child: Text("Sign up",
                        style: TextStyle(
                            color: ConstantColors().greyPrimary,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                  ),

                  Column(
                    children: [
                      //name organization, eshop name
                      CustomInput(
                        hintText: "Name or Organization",
                        onChanged: (value) {},
                        onSubmitted: (value) {
                          focusNode.nextFocus();
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      //Mobile
                      CustomInput(
                        isNumberField: true,
                        hintText: "Mobile",
                        onChanged: (value) {},
                        onSubmitted: (value) {
                          focusNode.nextFocus();
                        },
                        textInputAction: TextInputAction.next,
                      ),

                      //Email
                      CustomInput(
                        hintText: "Email",
                        onChanged: (value) {},
                        onSubmitted: (value) {
                          focusNode.nextFocus();
                        },
                        textInputAction: TextInputAction.next,
                      ),

                      //password
                      CustomInput(
                        hintText: "Password",
                        onChanged: (value) {},
                        onSubmitted: (value) {
                          focusNode.nextFocus();
                        },
                        textInputAction: TextInputAction.next,
                        focusNode: focusNode,
                      ),

                      //Confirm Password
                      CustomInput(
                        hintText: "Confirm Password",
                        onChanged: (value) {},
                        onSubmitted: (value) {
                          focusNode.nextFocus();
                        },
                        focusNode: focusNode,
                      ),
                    ],
                  ),
                  //Account type dropdown

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 13),
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f2),
                      // border: Border.all(color: ConstantColors().greySecondary),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: dropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded,
                            color: Color(0xff646464)),
                        iconSize: 26,
                        elevation: 16,
                        style: const TextStyle(color: Color(0xff646464)),
                        // underline: Container(
                        //     height: 1, color: Color(0xffC6C6C6)),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Select Account Type',
                          'Personal Account',
                          'Business Account',
                          'E-shop',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    text: "Register",
                    outlineBtn: false,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: HomePage(),
                              type: PageTransitionType.rightToLeft));
                    },
                  ),
                  CustomButton(
                    text: "login",
                    outlineBtn: true,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: LoginPage(),
                              type: PageTransitionType.leftToRight));
                    },
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}