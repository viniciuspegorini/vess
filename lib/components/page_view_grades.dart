import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewGrades extends StatelessWidget {
  const PageViewGrades({
    this.top,
    this.onChanged,
    Key key,
    @required double screenHeight,
  }) : super(key: key);

  final ValueChanged<int> onChanged;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      height: MediaQuery.of(context).size.height * .90,
      left: 0,
      right: 0,
      child: PageView(
        physics: BouncingScrollPhysics(),
        onPageChanged: onChanged,
        children: <Widget>[
          CardApp(
            title: 'Atribuição da nota',
            description:
                'Compare a amostra com as descrições e fotos representadas a seguir e determine o que mais se assemelha para cada camada da amostra:',
          ),
          CardApp(
            title: 'Qualidade estrutural 1 \n(Qe 1): Friável',
            description:
                'Agregados quebram facilmente com os dedos. Alta porosidade. Raízes por todo o solo. Agregados são pequenos, a maioria < 6 mm após a fragmentação da amostra. ',
          ),
          CardApp(
            title: 'Qe 2: Intacto ',
            description:
                'Agregados quebram facilmente com uma mão. Sem presença de torrões (agregados grandes, duros, coesos e arredondados). A maioria dos agregados são porosos, com tamanho entre 2 mm - 7 cm. Raízes por todo o solo. Agregados quando obtidos são redondos, muito frágeis, despedaçam muito facilmente e são altamente porosos.\n\nAparência de agregados naturais ou fragmento reduzido de ~1-1,5 diâmetro\n\nFoto do agregado\n\nAdicionar esta descrição abaixo da foto: São redondos, muito frágeis, despedaçam muito facilmente e são altamente porosos. ',
          ),
          CardApp(
            title: 'Qe 3: Firme',
            description:
                'Maioria dos agregados quebram com uma mão. Macroporos e fissuras presentes. Porosidade e raízes: ambas dentro dos agregados. Uma mistura de agregados porosos entre 2 mm -10 cm; menos de 30% são menores que 1 cm. Alguns torrões angulares não porosos podem estar presentes.',
          ),
          CardApp(
            title: 'Qe 4: Compacto',
            description:
                'Quebrar agregados com uma mão requer esforço considerável. Agregados com poucos macroporos e fissuras. Raízes agrupadas em macroporos e ao redor dos agregados. A maioria dos agregados são maiores que 10 cm e sub-angulares e menos que 30% são menores que 7 cm. Macroporos bem distintos.\nAparência de agregados naturais ou fragmento reduzido de ~1-1,5 diâmetro\nTeste de mão: Selecione na amostra, agregados com dimensões de 7-10 cm e utilizando somente uma mão, aplique força gradualmente com a palma da mão em vez de utilizar a ponta dos dedos. ',
          ),
          CardApp(
            title: 'Qe 5: Muito compacto',
            description:
                'Difícil quebra. Porosidade muito baixa. Macroporos podem estar presentes. Pode conter zonas anaeróbicas. Poucas raízes e restritas as fissuras. A maioria dos agregados são maiores que 10 cm, poucos menores que 7 cm, com formato angular e não poroso. A cor azul-acinzentada nos agregados pode ser uma característica distintiva.',
          ),
          CardApp(
            title: 'Avaliações extras:',
            description:
                'Teste de mão: Em cada camada da amostra, selecione agregados com dimensões de 7-10 cm e utilizando somente uma mão, aplique força gradualmente com a palma da mão em vez de utilizar a ponta dos dedos.\nCaso ainda restem dúvidas sobre que nota atribuir a camada, fragmente um agregado utilizando a unha e aplicando força nos pontos de fraqueza, até obter um agregado de 1,5 – 2,0 cm. Observe sua forma e facilidade de quebra. Agregados não porosos e angulosos são indicativos de estrutura pobre e nota alta. Descrição em cada uma das classes de qualidade estrutural.\nObservação: a maior dificuldade em extrair a amostra de solo também é um indicativo de estrutura pobre e nota alta.',
          ),
        ],
      ),
    );
  }
}
