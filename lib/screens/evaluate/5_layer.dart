import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class EvaluateFiveLayer extends StatefulWidget {
  @override
  _EvaluateFiveLayerState createState() => _EvaluateFiveLayerState();
}

class _EvaluateFiveLayerState extends State<EvaluateFiveLayer> {
  double layer1;
  double grade1;
  double layer2;
  double grade2;
  double layer3;
  double grade3;
  double layer4;
  double grade4;
  double layer5;
  double grade5;
  String finalResult = 'Insira os dados';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Calculo da Nota',
          style: kAppBarTextStyle,
        ),
        backgroundColor: Color(0xFFB99876),
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 80, left: 45, right: 45, top: 25),
        color: kBackgoundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Comprimento 1 [cm]',
                    icon: FontAwesomeIcons.layerGroup,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") layer1 = double.parse(str);
                        print(layer1);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Nota 1',
                    icon: FontAwesomeIcons.solidStar,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") grade1 = double.parse(str);
                        print(grade1);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Comprimento 2 [cm]',
                    icon: FontAwesomeIcons.layerGroup,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") layer2 = double.parse(str);
                        print(layer2);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Nota 2',
                    icon: FontAwesomeIcons.solidStar,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") grade2 = double.parse(str);
                        print(grade2);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Comprimento 3 [cm]',
                    icon: FontAwesomeIcons.layerGroup,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") layer3 = double.parse(str);
                        print(layer3);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Nota 3',
                    icon: FontAwesomeIcons.solidStar,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") grade3 = double.parse(str);
                        print(grade3);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Comprimento 4 [cm]',
                    icon: FontAwesomeIcons.layerGroup,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") layer4 = double.parse(str);
                        print(layer4);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Nota 4',
                    icon: FontAwesomeIcons.solidStar,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") grade4 = double.parse(str);
                        print(grade4);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Comprimento 5 [cm]',
                    icon: FontAwesomeIcons.layerGroup,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") layer5 = double.parse(str);
                        print(layer5);
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3, horizontal: 40),
                  child: buildTextField(
                    textHint: 'Nota 5',
                    icon: FontAwesomeIcons.solidStar,
                    onChange: (String str) {
                      setState(() {
                        if (str != "") grade5 = double.parse(str);
                        print(grade5);
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      finalResult = grade1 != 0 &&
                              layer1 != 0 &&
                              grade2 != 0 &&
                              layer2 != 0 &&
                              grade3 != 0 &&
                              layer3 != 0 &&
                              grade4 != 0 &&
                              layer4 != 0 &&
                              grade5 != 0 &&
                              layer5 != 0
                          ? (((layer1 * grade1) +
                                      (layer2 * grade2) +
                                      (layer3 * grade3) +
                                      (layer4 * grade4) +
                                      (layer5 * grade5)) /
                                  (layer1 + layer2 + layer3 + layer4 + layer5))
                              .toStringAsFixed(1)
                          : 'O número \'zero\' é inválido';

                      FocusScopeNode currentFocus = FocusScope.of(context);
                      currentFocus.unfocus(
                          disposition: UnfocusDisposition.scope);
                      print(finalResult);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.black38,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    child: Text(
                      'Avaliar',
                      style: kButtonAvaliar,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black45,
                      width: 2,
                    ),
                  ),
                  child: Text(
                    finalResult,
                    style: kGradeTextStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Methods
  bool isZero(double a) => a == null;

  bool isNull(double a) => a == null;

  TextField buildTextField(
      {String textHint, IconData icon, onChange(String str)}) {
    return TextField(
      keyboardType: TextInputType.numberWithOptions(signed: true),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black26),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: textHint,
      ),
      onChanged: onChange,
    );
  }
}
