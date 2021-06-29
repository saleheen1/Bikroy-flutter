import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:flutter/material.dart';

class ShopDetailsList extends StatelessWidget {
  const ShopDetailsList(
      {Key? key, this.detailsValue = "no data", this.detailsKey = "no data"})
      : super(key: key);

  final String detailsValue;
  final String detailsKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              detailsKey,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: ConstantColors().greyPrimary),
            ),
          ),
          Expanded(
            child: SelectableText(
              detailsValue,
              style:
                  TextStyle(fontSize: 15, color: ConstantColors().greyPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
