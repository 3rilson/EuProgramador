import 'package:eu_programador/telas/tela_menu.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/animated_button.dart';

class TelaCapitulo301 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SEU PRIMEIRO PROGRAMA",
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
                height: 1700,
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "   Está pronto(a) para fazer o seu primeiro programa? Que demais!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "     Abaixo podemos ver um código que talvez pareça meio estranho para você, correto? Escreva-o examente como na figura abaixo no seu compilador!",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      "imagens/hello.png",
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Normalmente os compiladores tem um icone parecido com a da foto abaixo que serve para que você possa estar executando o código.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),



                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  Icon(Icons.play_arrow,
                    color: Colors.green,
                      size: 100.0,
                    ),

                    ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Depois de ter escrito o código no seu compilador, execute-o.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Se tudo deu certo, seu programa gerou o texto \"OLÁ MUNDO\".",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Vamos entender o que esse código esquisito está informando, ok?",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Na linha 1: #include <stdio.h>",
                        style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Todo código em C necessita de bibliotecas. Essa stdio.h é uma usada frequentemente. Essa sintaxe de #include < > sempre será usado no começo de seus códigos. Lembre-se disso!",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    A figura abaixo mostra a estrutura padrão de um código.",
                        style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      "imagens/hello2.png",
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    O main é nossa estrutura principal. No nosso caso, ela está retornando uma main do tipo inteiro, por isso no exemplo temos: int main (  ). Esses parênteses que estão vazios significam que você tem uma função vazia. Note que após o main (   ) contém duas chaves {   }.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Essas chaves iniciam e encerram as instruções dentro de uma função. Tudo que houver dentro dela, será tentado a execução.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Linha 5: print (\"Olá mundo!\");",
                        style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    O printf serve para que o compilador mostre coisas na sua tela. Lembra do \"Olá mundo\"?. Faça o teste, coloque seu nome no lugar de \"Olá mundo\" e compile. Veja que o nome que você colocou, estará impresso na tela.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Obs.: A frase dentro do printf sempre deve estar entre aspas.",
                      style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold ),textAlign: TextAlign.justify, ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Voltar ao menu',
                      color: Colors.deepPurple,
                      pressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaMenu()),
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
