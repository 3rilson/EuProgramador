import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_atividade3_questao1.dart';
import 'package:awesome_dialog/animated_button.dart';

class TelaCapitulo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CAPÍTULO 3",
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: <Widget>[
              Image.asset(
                "imagens/background.jpg",
                fit: BoxFit.cover,
                height: 800,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "SWITCH",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "     Olá, nós vamos aprender nossa segunda estrutura de condicões. Você está pronto ? Vamos nessa!",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "     A existência do switch serve para a redução de linhas de comandos quando se é necessário a utilização de  muitos if (A estrutura vista no capítulo passado). Normalmente essa estrutura é usada para criação de cardápios em que o usuário deve esolher opções.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "     O conteúdo contido na variável é comparadado com um valor constante, e caso a comparação seja verdadeira, ele irá executar determinada instrução. Vejamos a estrutura abaixo:",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      "imagens/switch.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    A instrução break serve para determinar o fim da execução do switch, para que ele consiga ir para o teste seguinte.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    O break evita que o programa fique tentando procurar alternativadas de forma descenecessárias quando a opção verdadeira já foi encontrada.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    A opção default exibe uma mensagem caso as opções anteriores não sejam validadas.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Vejamos um exemplo abaixo: ",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      "imagens/switch2.png",
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    No nosso exemplo, temos uma variável chamada valor e essa variável deve receber o número 1, 2 ou outro número do tipo inteiro. Caso o número seja 1, ele imprimirá 'Homem', caso seja 2, ele imprimirá 'Mulher' e caso o usuário informe qualquer outro número do tipo inteiro, ele imprimirá 'Outro'. ",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Fazer atividade',
                      color: Colors.deepPurple,
                      pressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaAtividade3Questao1()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
