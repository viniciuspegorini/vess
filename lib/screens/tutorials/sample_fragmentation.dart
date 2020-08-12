import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vess_oficial/components/switch_page_buttons.dart';
import 'package:vess_oficial/constants.dart';

class SampleFragmentation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFB99876),
        title: Text(
          'Fragmentação da amostra',
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
                'Fragmentação da amostra',
                style: kTutorialTitleTextStyle,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Delicadamente manipule a amostra. Segure a amostra por baixo e abra como um livro. Observe se há camadas que se diferenciam pelo tamanho de agregados e faça a avaliação individual dessas camadas. Meça o comprimento de cada camada distinta.',
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

                  Navigator.pushNamed(context, '/sample_extraction');
                },
                onPressedForwardButton: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/grade_assignment');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
