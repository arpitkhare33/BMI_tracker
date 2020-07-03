import 'package:flutter/material.dart';

import 'package:flutter/painting.dart';



import '../constant.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          'Calculate',
          style: kLargeButtonTextStyle,
          textAlign: TextAlign.center,
        ),
        padding: EdgeInsets.only(top: 22.0),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}