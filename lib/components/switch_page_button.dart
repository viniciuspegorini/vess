import 'package:flutter/material.dart';
import 'package:vess_oficial/constants.dart';

class SwitchPageButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  SwitchPageButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: kDesactvatedColor,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Text(
          text,
          style: kBottomSwitchPageTextStyle,
        ),
      ),
    );
  }
}
