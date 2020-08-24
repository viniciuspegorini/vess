import 'package:flutter/material.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class BottomSimpleButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  BottomSimpleButton({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: kBottomButtonTextStyle,
      ),
    );
  }
}
