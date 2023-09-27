import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_avaliacao_do_solo/components/switch_page_buttons.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class Equipments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB99876),
        centerTitle: true,
        title: Text(
          'Equipamentos',
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
                'Equipamentos',
                style: kTutorialTitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Pá reta de aproximadamente 25 cm de largura e 22-25 cm de comprimento, trena ou régua de 30 cm. Opcional: folha plástica ou saco de cor clara ou bandeja ~50 x 80 cm, câmera digital.',
                style: kTutorialTextStyle,
                textAlign: TextAlign.justify,
              ),
              Divider(
                height: 50,
                color: Colors.black45,
              ),
              Image.asset(
                "assets/images/tools.gif",
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
                  Navigator.pushNamed(context, '/where_to_sample');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
