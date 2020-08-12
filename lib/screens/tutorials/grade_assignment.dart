import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_oficial/components/dots_app.dart';
import 'package:vess_oficial/components/page_view_grades.dart';
import 'package:vess_oficial/constants.dart';

class GradeAssignment extends StatefulWidget {
  @override
  _GradeAssignmentState createState() => _GradeAssignmentState();
}

class _GradeAssignmentState extends State<GradeAssignment> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFB99876),
        title: Text(
          'Atribuição da nota',
          style: kAppBarTextStyle,
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          PageViewGrades(
            top: _screenHeight * .001,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            screenHeight: _screenHeight,
          ),
          Positioned(
            top: _screenHeight * .85,
            child: DotsApp(
              currentIndex: _currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}

//Text(
//                'Atribuição da nota',
//                style: kTutorialTitleTextStyle,
//              ),
//              SizedBox(
//                height: 10,
//              ),
//              Text(
//                'O VESS pode ser aplicado para qualquer solo, uso e manejo. É importante selecionar a área de interesse e sempre comparar com uma área com boa qualidade estrutural (mata nativa ou solo não cultivados). É importante comparar, por exemplo, áreas com baixa produtividade e área com alta produtividade. Dentro de uma área homogênea avalie 3 a 5 pontos (Guimarães et al., 2017). ',
//                style: kTutorialTextStyle,
//                textAlign: TextAlign.justify,
//              ),

//              SwitchPageButtons(
//                onPressedBackButton: () {
//                  Navigator.pop(context);
//                  Navigator.pushNamed(context, '/equipments');
//                },
//                onPressedForwardButton: () {
//                  Navigator.pop(context);
//                  Navigator.pushNamed(context, '/when_to_sample');
//                },
//              ),
