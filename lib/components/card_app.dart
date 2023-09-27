import 'package:flutter/material.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class CardApp extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const CardApp({
    Key key,
    this.title,
    this.description,
    this.image,
  }) : super(key: key);

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
            Divider(
              height: 50,
              color: Colors.black45,
            ),
            image != null
                ? Image.asset(
                    image,
                    width: 150,
                    height: 150,
                  )
                : Text(''),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white12),
      ),
    );
  }
}
