import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/customButton.dart';
import 'package:bikroy/app/widgets/customInput.dart';
import 'package:bikroy/meta/screens/Authentications/signUpPage.dart';
import 'package:bikroy/meta/screens/Home/homePage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late FocusNode focusNode;

  AnimationController? _controller;
  Animation? _animation;

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
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(26.0),
            child: Center(
              child: Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70, top: 50),
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.fitHeight)),
                    ),
                  ),
                  Column(
                    children: [
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
                        onSubmitted: (value) {},
                        focusNode: focusNode,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    text: "Login",
                    color: ConstantColors().primaryColor,
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
                    text: "Register",
                    color: ConstantColors().primaryColor,
                    outlineBtn: true,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: SignUpPage(),
                              type: PageTransitionType.rightToLeft));
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
