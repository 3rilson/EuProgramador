import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo1.1.dart';
import 'package:awesome_dialog/animated_button.dart';

class TelaCapitulo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "CAPÍTULO 1",
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
                      "VARIÁVEIS",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "     Olá, nós vamos aprender um pouco sobre as variáveis. Você está pronto ? Que ótimo! Vamos nessa!",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Uma variável é um local onde você irá poder armazenar temporariamente uma informação. Pense em uma caixa vazia na qual você deseja armazená-los os seus livros, essa caixa poderá armazenar-los, correto? Pois bem, as variáveis possuem este mesmo papel.",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset(
                      "imagens/livros.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "    Para que se tenha organização na utilização dessas variáveis, você precisará dar um nome as mesmas. Isso irá facilitar quando desejar ter acesso a elas, concorda?",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Continuar',
                      color: Colors.deepPurple,
                      pressEvent: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaCapitulo101()),
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
