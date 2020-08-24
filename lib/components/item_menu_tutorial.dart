import 'package:flutter/material.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class ItemMenuTutorial extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function onPressed;

  ItemMenuTutorial(
      {@required this.icon, @required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icon),
              Text(
                text,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kDesactvatedColor,
          ),
        ),
      ),
    );
  }
}
