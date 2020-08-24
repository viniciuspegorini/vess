import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_avaliacao_do_solo/components/switch_page_buttons.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFB99876),
        title: Text(
          'Sobre o App',
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
                'Versão 2.0\n',
                style: kTutorialTitleTextStyle,
              ),
              Text(
                'Esta aplicação tem por objetivo a utilização do modelo de Avaliação Visual da Estrutura do Solo (Ball et al., 2007; Guimarães et al., 2011)\n',
                style: kTutorialTextStyle,
                textAlign: TextAlign.left,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              Text(
                'Coordenadora do projeto',
                style: kTutorialTitleTextStyle,
              ),
              Text(
                'Dr. Rachel Muylaert Locks Guimarães \nUniversidade Tecnológica Federal do Paraná\n',
                style: kTutorialTextStyle,
                textAlign: TextAlign.left,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              Text(
                'Desenvolvedores',
                style: kTutorialTitleTextStyle,
              ),
              Text(
                'João Victor Costa Mazzochin - Universidade Tecnológica Federal do Paraná\nProf. Vinícius Pegorini - Universidade Tecnológica Federal do Paraná\nTatiany Keiko Mori - Universidade Tecnológica Federal do Paraná\n',
                style: kTutorialTextStyle,
                textAlign: TextAlign.left,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              Text(
                'Colaboradores',
                style: kTutorialTitleTextStyle,
              ),
              Text(
                'Vacilania Pacheco – Universidade Tecnológica Federal do Paraná.\nBruce C. Ball - Scotland’s Rural College.\nTom Batey - University of Aberdeen.\nLars J. Monkholm - Aarhus University.\nCassio A. Tormena - Universidade Estadual de Maringá.\nRenan Augusto Lack Barboza – Universidade Tecnológica Federal do Paraná.\n',
                style: kTutorialTextStyle,
                textAlign: TextAlign.left,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              Text(
                'Suporte financeiro',
                style: kTutorialTitleTextStyle,
              ),
              Text(
                'Projeto financiado pelo edital Universal CNPq - Processo 428579/2016-7.\nFundação Araucária.\nCoordenação de Aperfeiçoamento de Pessoal de Nível Superior.\n',
                style: kTutorialTextStyle,
                textAlign: TextAlign.left,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              Text(
                'Fale conosco',
                style: kTutorialTitleTextStyle,
              ),
              Text(
                'Você tem dúvidas sobre o VESS?\nContribua com melhorias para a metodologia ou deixe sua sugestão no email abaixo:\n\n\nrachelguimaraes@utfpr.edu.br',
                style: kTutorialTextStyle,
                textAlign: TextAlign.left,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              SwitchPageButtons(
                onPressedBackButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/what_is_vess');
                },
                onPressedForwardButton: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
