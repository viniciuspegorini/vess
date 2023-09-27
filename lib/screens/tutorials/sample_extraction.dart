import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_avaliacao_do_solo/components/switch_page_buttons.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class SampleExtraction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFB99876),
        title: Text(
          'Extração da amostra',
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
                'Extração da amostra',
                style: kTutorialTitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Abra uma pequena tricheira cavando somente em lados opostos, reservando dois lados para a retirada da amostra de solo (VER ANIMAÇÃO). Retire uma amostra de 10 a 15 cm de espessura, 20 cm de largura e aprox. 25 cm de profundidade. Acomode a amostra no chão. Meça o comprimento (profundidade) da amostra. (É possível retirar menores profundidades, mas evite amostrar profundidades maiores que 25 cm, para isso utilize o SubVESS (Ball et al., 2015). ',
                style: kTutorialTextStyle,
                textAlign: TextAlign.justify,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              Image.asset(
                "assets/images/swapslice.gif",
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              SwitchPageButtons(
                onPressedBackButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/when_to_sample');
                },
                onPressedForwardButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/sample_fragmentation');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
