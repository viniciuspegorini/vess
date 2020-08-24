import 'package:flutter/material.dart';

import 'switch_page_button.dart';
// This swich buttons recive the function (navigation).

class SwitchPageButtons extends StatelessWidget {
  final Function onPressedBackButton;
  final Function onPressedForwardButton;

  SwitchPageButtons(
      {@required this.onPressedBackButton,
      @required this.onPressedForwardButton});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SwitchPageButton(
                onPressed: onPressedBackButton,
                text: 'Voltar',
              ),
              SwitchPageButton(
                onPressed: onPressedForwardButton,
                text: 'Próximo',
              )
            ],
          ),
        ),
      ),
    );
  }
}
