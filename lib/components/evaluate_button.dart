import 'package:flutter/material.dart';
import 'package:vess_oficial/constants.dart';

class EvaluateButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;

  EvaluateButton({this.text, this.color, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: color,
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Text(
          text,
          style: kButtonAvaliar,
        ),
      ),
    );
  }
}
