import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewGrades extends StatelessWidget {
  PageViewGrades(
      {this.top, this.onChanged, Key key, @required double screenHeight})
      : super(key: key);

  final ValueChanged<int> onChanged;
  final double top;
  final PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 170,
          child: PageView(
            physics: BouncingScrollPhysics(),
            onPageChanged: onChanged,
            controller: pageController,
            children: <Widget>[
              CardApp(
                title: 'Atribuição da nota',
                description:
                    'Compare a amostra com as descrições e fotos representadas a seguir e determine o que mais se assemelha para cada camada da amostra.',
              ),
              CardApp(
                title: 'Qualidade estrutural 1 \n(Qe 1): Friável',
                description:
                    'Agregados quebram facilmente com os dedos. Alta porosidade. Raízes por todo o solo. Agregados são pequenos, a maioria < 6 mm apósa fragmentação da amostra. ',
                image: "assets/images/qe1_1.png",
              ),
              CardApp(
                title: 'Qe 2: Intacto ',
                description:
                    'Agregados quebram facilmente com uma mão. Sem presença de torrões (agregados grandes, duros, coesos e arredondados). A maioria dos agregados são porosos, com tamanho entre 2 mm - 7 cm. Raízes por todo o solo. Agregados quando obtidos são redondos, muito frágeis, despedaçam muito facilmente e são altamente porosos.\nAparência de agregados naturais ou fragmento reduzido de ~1-1,5 diâmetro. São redondos, muito frágeis, despedaçam muito facilmente e são altamente porosos.',
                image: "assets/images/qe2_1.png",
              ),
              CardApp(
                title: 'Qe 3: Firme',
                description:
                    'Maioria dos agregados quebram com uma mão. Macroporos e fissuras presentes. Porosidade e raízes: ambas dentro dos agregados. Uma mistura de agregados porosos entre 2 mm -10 cm; menos de 30% são menores que 1 cm. Alguns torrões angulares não porosos podem estar presentes.',
                image: "assets/images/qe3_1.png",
              ),
              CardApp(
                title: 'Qe 4: Compacto',
                description:
                    'Quebrar agregados com uma mão requer esforço considerável. Agregados com poucos macroporos e fissuras. Raízes agrupadas em macroporos e ao redor dos agregados. A maioria dos agregados são maiores que 10 cm e sub-angulares e menos que 30% sãomenores que 7 cm. Macroporos bem distintos.\nAparência de agregados naturais ou fragmento reduzido de ~1-1,5 diâmetro\nTeste de mão: Selecione na amostra, agregados com dimensões de 7-10 cm e utilizando somente uma mão, aplique força gradualmente com a palma da mão em vez de utilizar a ponta dos dedos. ',
                image: "assets/images/qe4_1.png",
              ),
              CardApp(
                title: 'Qe 5: Muito compacto',
                description:
                    'Difícil quebra. Porosidade muito baixa. Macroporos podem estar presentes. Pode conter zonas anaeróbicas. Poucas raízes e restritas as fissuras. A maioria dos agregados são maiores que 10 cm, poucos menores que 7 cm, com formato angular e não poroso. A cor azul-acinzentada nos agregados pode ser uma característica distintiva.',
                image: "assets/images/qe5_1.png",
              ),
              CardApp(
                title: 'Avaliações extras:',
                description:
                    'Teste de mão: Em cada camada da amostra, selecione agregados com dimensões de 7-10 cm e utilizando somente uma mão, aplique força gradualmente com a palma da mão em vez de utilizar a ponta dos dedos.\nCaso ainda restem dúvidas sobre que nota atribuir a camada, fragmente um agregado utilizando a unha e aplicando força nos pontos de fraqueza, até obter um agregado de 1,5 – 2,0 cm. Observe suaforma e facilidade de quebra. Agregados não porosos e angulosos são indicativos de estrutura pobre e nota alta. Descrição em cada uma das classes de qualidade estrutural.\nObservação: a maior dificuldade em extrair a amostra de solo também é um indicativo de estrutura pobre e nota alta.',
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0x95B99976),
                              Color(0x85D2B48C),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 12),
                      ),
                      onPressed: () {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text('<'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0x85D2B48C),
                              Color(0x95B99976),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(16.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 12),
                      ),
                      onPressed: () {
                        pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      child: const Text('>'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
