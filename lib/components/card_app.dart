import 'package:flutter/material.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class CardApp extends StatelessWidget {
  final String title;
  final String description;

  const CardApp({Key key, this.title, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              style: kTutorialTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              child: Text(
                description,
                style: kTutorialTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white12,
        ),
      ),
    );
  }
}
