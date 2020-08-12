import 'package:flutter/material.dart';
import 'package:vess_oficial/constants.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  RoundButton(
      {@required this.color, @required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: color),
        margin: EdgeInsets.all(5),
        child: Center(
          child: Text(text, style: kRoundButtonTextStyle),
        ),
      ),
    );
  }
}
