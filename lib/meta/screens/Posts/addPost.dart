import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/app/widgets/customInput.dart';
import 'package:bikroy/core/services/helper.dart';
import 'package:bikroy/meta/screens/Posts/postHelper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> with SingleTickerProviderStateMixin {
  late FocusNode focusNode;

  AnimationController? _controller;
  Animation? _animation;
  bool checkedValue = false;

  String dropdownValue = 'Select City';
  String areaDropdownValue = 'Select Area';
  String brandDropdownValue = 'Select Brand';
  String fuelDropdownValue = 'Fuel type';

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

  int _radioValue = 0;

  void setSelectedRadio(int? val) {
    setState(() {
      _radioValue = val!;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Helper().heroArea("Post an Ad", true, Colors.white, context),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          'Select City',
                          'Personal Account',
                          'Business Account',
                          'E-shop',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: ConstantColors().primaryColor),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  PostHelper().customSizedBox(),
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
                        value: areaDropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded,
                            color: Color(0xff646464)),
                        iconSize: 26,
                        elevation: 16,
                        style: const TextStyle(color: Color(0xff646464)),
                        // underline: Container(
                        //     height: 1, color: Color(0xffC6C6C6)),
                        onChanged: (String? newValue) {
                          setState(() {
                            areaDropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Select Area',
                          'Personal Account',
                          'Business Account',
                          'E-shop',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: ConstantColors().primaryColor),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  PostHelper().customSizedBox(),
                  CustomInput(
                    hintText: "Specific address",
                    onChanged: (value) {},
                    onSubmitted: (value) {
                      focusNode.nextFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),
//Buy or sell radio button
                  Row(
                    children: [
                      Radio(
                          value: 0,
                          groupValue: _radioValue,
                          activeColor: Colors.green,
                          onChanged: setSelectedRadio),
                      Text('I Want to Sell'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _radioValue,
                          activeColor: Colors.green,
                          onChanged: setSelectedRadio),
                      Text('I Want to Buy'),
                    ],
                  ),
                  PostHelper().customSizedBox(),
                  CustomInput(
                    hintText: "Title",
                    onChanged: (value) {},
                    onSubmitted: (value) {
                      focusNode.nextFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),

                  //Pick image
                  PostHelper().chooseImageBtn(context),

                  PostHelper().customSizedBox(),
                  //Used or new radio button
                  Row(
                    children: [
                      Radio(
                          value: 0,
                          groupValue: _radioValue,
                          activeColor: Colors.green,
                          onChanged: setSelectedRadio),
                      Text('Used'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _radioValue,
                          activeColor: Colors.green,
                          onChanged: setSelectedRadio),
                      Text('New'),
                    ],
                  ),

                  PostHelper().customSizedBox(),

                  //price
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CustomInput(
                          hintText: "Price",
                          isNumberField: true,
                          onChanged: (value) {},
                          onSubmitted: (value) {
                            focusNode.nextFocus();
                          },
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox(
                                value: checkedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    checkedValue = !checkedValue;
                                  });
                                }),
                            Text(
                              "Negotiable",
                              style: ConstantsStyle().paraGraphStyle,
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                  PostHelper().customSizedBox(),

                  //Select brand dropdown

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
                        value: brandDropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded,
                            color: Color(0xff646464)),
                        iconSize: 26,
                        elevation: 16,
                        style: const TextStyle(color: Color(0xff646464)),
                        // underline: Container(
                        //     height: 1, color: Color(0xffC6C6C6)),
                        onChanged: (String? newValue) {
                          setState(() {
                            brandDropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Select Brand',
                          'Samsung',
                          'Sony',
                          'Audi',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: ConstantColors().primaryColor),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  PostHelper().customSizedBox(),

                  //Select Fuel type
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
                        value: fuelDropdownValue,
                        icon: const Icon(Icons.keyboard_arrow_down_rounded,
                            color: Color(0xff646464)),
                        iconSize: 26,
                        elevation: 16,
                        style: const TextStyle(color: Color(0xff646464)),
                        // underline: Container(
                        //     height: 1, color: Color(0xffC6C6C6)),
                        onChanged: (String? newValue) {
                          setState(() {
                            fuelDropdownValue = newValue!;
                          });
                        },
                        items: <String>[
                          'Fuel type',
                          'Samsung',
                          'Sony',
                          'Audi',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: ConstantColors().primaryColor),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  PostHelper().customSizedBox(),

                  //model name
                  CustomInput(
                    hintText: "Model Name & Year",
                    onChanged: (value) {},
                    onSubmitted: (value) {
                      focusNode.nextFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),

                  //Milege
                  CustomInput(
                    hintText: "Milege (Km)",
                    isNumberField: true,
                    onChanged: (value) {},
                    onSubmitted: (value) {
                      focusNode.nextFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),

                  //Engine Capacity
                  CustomInput(
                    hintText: "Engine Capacity (Cc)",
                    isNumberField: true,
                    onChanged: (value) {},
                    onSubmitted: (value) {
                      focusNode.nextFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),

                  //Tags
                  CustomInput(
                    hintText: "Tag separated by comma (,)",
                    isNumberField: true,
                    onChanged: (value) {},
                    onSubmitted: (value) {
                      focusNode.nextFocus();
                    },
                    textInputAction: TextInputAction.next,
                  ),

                  //Post description
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xfff2f2f2),
                        borderRadius: BorderRadius.circular(6)),
                    child: TextField(
                      style: TextStyle(fontSize: 14),
                      maxLines: 8,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Description",
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 13, vertical: 13)),
                    ),
                  ),

                  //Submit button

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                            decoration: BoxDecoration(
                                color: ConstantColors().primaryColor,
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            child: Text(
                              "Submit",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),

                  PostHelper().customSizedBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
