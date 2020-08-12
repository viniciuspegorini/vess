import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_oficial/components/switch_page_buttons.dart';
import 'package:vess_oficial/constants.dart';

class WhatIsVess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFB99876),
        title: Text(
          'O que é VESS',
          style: kAppBarTextStyle,
        ),
      ),
      body: Container(
        color: kBackgoundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                'O que é VESS',
                style: kTutorialTitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'A Avaliação Visual da Estrutura do Solo (VESS) é um teste de pá em que se avalia a qualidade estrutural (Qe) do solo de forma visual e  tátil. Os critérios avaliados para a atribuição de uma nota são presença de poros, tamanho, resistência e forma de agregados, presença ou não de raízes, entre outras. A nota pode variar entre Qe1 (ótimo) a Qe5 (ruim). A partir dessa nota, pode-se realizar inferências e tomar decisões em relação ao manejo do solo (Guimarães et al., 2011; Ball et al., 2017). ',
                style: kTutorialTextStyle,
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'O VESS foi desenvolvido a partir da metodologia de Peerlkamp (1959) e apresentado em sua primeira versão por Ball et al. (2007). Ajustes foram realizados por Guimarães et al. (2011), sendo esta a versão utilizada para este aplicativo. O VESS é amplamente difundido no mundo, e já foi testado para uma grande variedade de solos (Franco et al., 2019).',
                style: kTutorialTextStyle,
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Mais informações podem ser encontradas em: https://www.sruc.ac.uk/vess (Inglês) ou http://paginapessoal.utfpr.edu.br/rachelguimaraes (Português).',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              SwitchPageButtons(
                onPressedBackButton: () {
                  Navigator.pop(context);
                },
                onPressedForwardButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/about_app');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
