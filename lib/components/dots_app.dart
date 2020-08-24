import 'package:flutter/material.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class DotsApp extends StatelessWidget {
  final int currentIndex;
  Color getColor(index) {
    return index == currentIndex ? kActivatedColor : Colors.brown;
  }

  DotsApp({Key key, this.currentIndex}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(0),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(1),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(2),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(3),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(4),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(5),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 8),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            color: getColor(6),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
