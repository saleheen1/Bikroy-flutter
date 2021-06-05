import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final TextInputAction textInputAction;
  final bool isPasswordField;
  final FocusNode focusNode;

  const CustomInput(
      {Key? key,
      required this.hintText,
      required this.onChanged,
      required this.onSubmitted,
      this.textInputAction = TextInputAction.next,
      this.isPasswordField = false,
      required this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 19),
        decoration: BoxDecoration(
            color: Color(0xfff2f2f2), borderRadius: BorderRadius.circular(6)),
        child: TextField(
          //prevent user form entering empty space
          // inputFormatters: [
          //   FilteringTextInputFormatter.deny(new RegExp(r"\s\b|\b\s"))
          // ],
          focusNode: focusNode,
          onChanged: onChanged, //its's like saying onChanged:
          //(value){_userEmail/pass... = value} basically the value is sent to other page or in other words we are writing the function in other page referencing that function here
          onSubmitted: onSubmitted,
          textInputAction: textInputAction,
          obscureText: isPasswordField,
          style: TextStyle(fontSize: 14),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 13, vertical: 13)),
        ));
  }
}
