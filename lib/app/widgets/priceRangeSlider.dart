import 'package:bikroy/app/constants/Constantcolors.dart';
import 'package:bikroy/app/constants/ConstantsStyle.dart';
import 'package:bikroy/meta/screens/Home/homeHelper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PriceRangeSlider extends StatefulWidget {
  const PriceRangeSlider({Key? key}) : super(key: key);

  @override
  _PriceRangeSliderState createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  RangeValues _currentRangeValues = const RangeValues(200, 800);
  getname(index) {
    if (index == 0) {
      return "Samsung";
    } else if (index == 1) {
      return "Sony";
    } else if (index == 2) {
      return "Xiaomi";
    } else {
      return "Huawei";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RangeSlider(
            activeColor: ConstantColors().primaryColor,
            values: _currentRangeValues,
            min: 0,
            max: 1000,
            // divisions: 5,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          Text(
            "Price range: ${_currentRangeValues.start.round().toString()} - ${_currentRangeValues.end.round().toString()}",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: ConstantColors().greyPrimary),
          ),
          Container(
            child: GridView.count(
              padding: EdgeInsets.only(top: 20),
              childAspectRatio: 3 / 1,
              crossAxisCount: 2,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(4, (index) {
                return CheckboxListTile(
                  activeColor: ConstantColors().primaryColor,
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    getname(index),
                    style: ConstantsStyle().paraGraphStyle,
                  ),
                  value: context
                      .watch<HomeHelper>()
                      .isbrand1Checked, //use watch when u are getting a value returned
                  onChanged: (newValue) {
                    context
                        .read<HomeHelper>()
                        .brand1CheckedChanger(); //use read when you only want to fire a function
                  },
                  controlAffinity:
                      ListTileControlAffinity.leading, //  <-- leading Checkbox
                );
              }),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //Filter save button
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: ConstantColors().primaryColor,
                  borderRadius: BorderRadius.circular(3)),
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Text(
                "Save",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
