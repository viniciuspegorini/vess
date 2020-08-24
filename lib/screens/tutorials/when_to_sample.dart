import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_avaliacao_do_solo/components/switch_page_buttons.dart';
import 'package:vess_avaliacao_do_solo/constants.dart';

class WhenToSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFB99876),
        title: Text(
          'Quando amostrar',
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
                'Quando amostrar',
                style: kTutorialTitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'O VESS pode ser realizado em qualquer época do ano. Em solos argilosos deve-se esperar pelo menos 4 dias após uma chuva (> 50 mm) (Ball et al., 2017). Se o solo estiver muito seco ou muito úmido será difícil de ser obtida uma amostra representativa. Raízes são melhores vistas em uma área com cultura já estabelecida ou logo após a colheita.',
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
                  Navigator.pushNamed(context, '/where_to_sample');
                },
                onPressedForwardButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/sample_extraction');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
