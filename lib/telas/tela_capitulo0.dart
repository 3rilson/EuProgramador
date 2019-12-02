import 'package:eu_programador/telas/tela_capitulo0.1.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/animated_button.dart';

class TelaCapitulo0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CONCEITOS INICIAIS",
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
                      "COMPILADORES",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child:

                    Text(
                        "     Olá, amante da programação! Tudo bem com você?",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),

                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "     Bem, antes de iniciarmos nosso estudo sobre linguagem C, primeiro precisaremos saber onde escreveremos nossos códigos, ok?",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Desenvolvedores usam IDEs que são compiladores de códigos. Essas IDEs (Ambiente de Desenvolvimento Integrado) servem para que o computador converta o código em um linguagem que só ele entende.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "   Existem vários programas que compilam códigos em C como: Dev-C++, Code::Blocks etc. ",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Row(
                    children: <Widget>[
                      Image.asset("imagens/dev.png",
                        fit: BoxFit.cover, height: 150 ,),
                      Image.asset("imagens/code.png",
                          fit: BoxFit.cover, height: 150),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Também existem ferramentas online como o OnlineGDB.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),

                  Image.asset("imagens/gdb.JPG",
                    fit: BoxFit.cover, height: 80 ,),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Continuar',
                      color: Colors.deepPurple,
                      pressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaCapitulo301()),
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
