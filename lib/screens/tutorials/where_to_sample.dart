import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_oficial/components/switch_page_buttons.dart';
import 'package:vess_oficial/constants.dart';

class WhereToSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFB99876),
        title: Text(
          'Onde Amostrar',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        color: kBackgoundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'Onde amostrar',
                style: kTutorialTitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'O VESS pode ser aplicado para qualquer solo, uso e manejo. É importante selecionar a área de interesse e sempre comparar com uma área com boa qualidade estrutural (mata nativa ou solo não cultivados). É importante comparar, por exemplo, áreas com baixa produtividade e área com alta produtividade. Dentro de uma área homogênea avalie 3 a 5 pontos (Guimarães et al., 2017). ',
                style: kTutorialTextStyle,
                textAlign: TextAlign.justify,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              SwitchPageButtons(
                onPressedBackButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/equipments');
                },
                onPressedForwardButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/when_to_sample');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
