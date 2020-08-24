import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class Recommendation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        color: kActivatedColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Image.asset('/assets/images/book.png'),
            SizedBox(
              height: MediaQuery.of(context).size.height * .25,
            ),
            Text(
              'Bem-vindo!',
              style: kRecommendationTitleTextStyle,
              textAlign: TextAlign.left,
            ),
            Text(
              'Recomendamos a leitura de toda a aba \'Processo de Avaliação\' antes do uso da aplicação.',
              style: kRecommendationTextStyle,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF664229),
                      size: 50,
                    ),
                    height: MediaQuery.of(context).size.height * .1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFF664229),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
