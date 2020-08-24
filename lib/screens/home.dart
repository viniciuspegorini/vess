import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vess_avaliacao_do_solo/components/bottom_simple_button.dart';
import 'package:vess_avaliacao_do_solo/components/evaluate_button.dart';
import 'package:vess_avaliacao_do_solo/components/item_menu_tutorial.dart';
import 'package:vess_avaliacao_do_solo/components/round_button.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var items = List<RoundButton>();
  int buttonPressed = 1;
  @override
  Widget build(BuildContext context) {
    double _screenHeigh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB99876),
        centerTitle: true,
        title: Text(
          'Menu',
          style: kAppBarTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        color: kBackgoundColor,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top * .1,
            ),
            Expanded(
              //=== TUTORIAL SECTION ===
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Processo de avaliação',
                      style: kEvaluateProcessTextStyle,
                    ),
                  ),
                  Divider(
                    color: Colors.black45,
                    height: 2,
                  ),
                  Container(
                    height: _screenHeigh * 0.16,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children: <Widget>[
                        ItemMenuTutorial(
                          icon: FontAwesomeIcons.tools,
                          text: 'Equipamentos',
                          onPressed: () {
                            Navigator.pushNamed(context, '/equipments');
                          },
                        ),
                        ItemMenuTutorial(
                          icon: FontAwesomeIcons.searchLocation,
                          text: 'Onde amostrar',
                          onPressed: () {
                            Navigator.pushNamed(context, '/where_to_sample');
                          },
                        ),
                        ItemMenuTutorial(
                          icon: FontAwesomeIcons.snowflake,
                          text: 'Quando amostrar',
                          onPressed: () {
                            Navigator.pushNamed(context, '/when_to_sample');
                          },
                        ),
                        ItemMenuTutorial(
                          icon: FontAwesomeIcons.shapes,
                          text: 'Extração da amostra',
                          onPressed: () {
                            Navigator.pushNamed(context, '/sample_extraction');
                          },
                        ),
                        ItemMenuTutorial(
                          icon: FontAwesomeIcons.braille,
                          text: 'Fragmentação da amostra',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/sample_fragmentation');
                          },
                        ),
                        ItemMenuTutorial(
                          icon: FontAwesomeIcons.solidStar,
                          text: 'Atribuição da nota',
                          onPressed: () {
                            Navigator.pushNamed(context, '/grade_assignment');
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black45,
                    height: 2,
                  ),
                  //List VIEW ====================
                ],
              ),
            ), //Tutorial
            Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Text(
                    'Quantas camadas deseja avaliar?',
                    style: kEvaluateTextStyle,
                  ),
                  SizedBox(height: _screenHeigh * .01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RoundButton(
                          color: buttonPressed == 1
                              ? kActivatedColor
                              : kDesactvatedColor,
                          text: '1',
                          onPressed: () {
                            setState(() {
                              buttonPressed = 1;
                            });
                          }),
                      RoundButton(
                          color: buttonPressed == 2
                              ? kActivatedColor
                              : kDesactvatedColor,
                          text: '2',
                          onPressed: () {
                            setState(() {
                              buttonPressed = 2;
                            });
                          }),
                      RoundButton(
                          color: buttonPressed == 3
                              ? kActivatedColor
                              : kDesactvatedColor,
                          text: '3',
                          onPressed: () {
                            setState(() {
                              buttonPressed = 3;
                            });
                          }),
                      RoundButton(
                          color: buttonPressed == 4
                              ? kActivatedColor
                              : kDesactvatedColor,
                          text: '4',
                          onPressed: () {
                            setState(() {
                              buttonPressed = 4;
                            });
                          }),
                      RoundButton(
                          color: buttonPressed == 5
                              ? kActivatedColor
                              : kDesactvatedColor,
                          text: '5',
                          onPressed: () {
                            setState(() {
                              buttonPressed = 5;
                            });
                          }),
                    ],
                  ),
                  SizedBox(
                    height: _screenHeigh * 0.02,
                  ),
                  EvaluateButton(
                    text: 'Avaliar',
                    color: Color(0xFF664229),
                    onPressed: () {
                      Navigator.pushNamed(context, '/${buttonPressed}_layer');
                    },
                  ),
                ],
              ), // === EVALUATE SE ===
            ), // Evaluation section
            Expanded(
              // === BOTTOM SECTION ===
              flex: 1,
              child: Column(
                children: <Widget>[
                  //HERE========================================
                  BottomSimpleButton(
                    text: 'O que é VESS',
                    onPressed: () {
                      Navigator.pushNamed(context, '/what_is_vess');
                    },
                  ),
                  SizedBox(
                    height: _screenHeigh * 0.01,
                  ),
                  BottomSimpleButton(
                    text: 'Sobre o app',
                    onPressed: () {
                      Navigator.pushNamed(context, '/about_app');
                    },
                  ),
                ],
              ),
            ), // Project info
          ],
        ),
      ),
    );
  }
}
