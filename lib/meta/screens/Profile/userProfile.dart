import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/widgets/actionBar.dart';
import 'package:bikroy/app/widgets/customButton.dart';
import 'package:bikroy/app/widgets/customInput.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with SingleTickerProviderStateMixin {
  late FocusNode focusNode;

  AnimationController? _controller;

  Animation? _animation;
  String dropdownValue = 'Select Division';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 20),
            child: Column(
              children: [
                ActionBar(title: "Profile", hasBackArrow: true),
                SizedBox(
                  height: 5,
                ),
                CustomInput(
                  hintText: "Email Id",
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    focusNode.nextFocus();
                  },
                  textInputAction: TextInputAction.next,
                ),
                CustomInput(
                  isNumberField: true,
                  hintText: "Mobile",
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    focusNode.nextFocus();
                  },
                  textInputAction: TextInputAction.next,
                ),

                CustomInput(
                  hintText: "Organization Name",
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    focusNode.nextFocus();
                  },
                  textInputAction: TextInputAction.next,
                ),

                //DropDown

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
                        'Select Division',
                        'Khulna',
                        'Barishal',
                        'Sylhet',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style:
                                TextStyle(color: ConstantColors().primaryColor),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                //Address
                SizedBox(
                  height: 20,
                ),
                CustomInput(
                  hintText: "Address",
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    focusNode.nextFocus();
                  },
                  textInputAction: TextInputAction.next,
                ),

                CustomButton(
                  text: "Update Profile",
                  color: ConstantColors().primaryColor,
                  outlineBtn: false,
                  onPressed: () {},
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
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

                    //Update Password
                    CustomInput(
                      hintText: "Confirm Password",
                      onChanged: (value) {},
                      onSubmitted: (value) {
                        focusNode.nextFocus();
                      },
                    ),
                    //Update password button
                    InkWell(
                      child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color(0xff2A6C90)),
                        child: Text(
                          "Update Password",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
