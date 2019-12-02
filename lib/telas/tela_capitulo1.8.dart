import 'package:eu_programador/telas/tela_atividade1_questao3.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/animated_button.dart';
import 'package:eu_programador/telas/tela_atividade1_questao1.dart';


class TelaCapitulo108 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CAPÍTULO 1"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: <Widget>[
              Image.asset("imagens/background.jpg",
                fit: BoxFit.cover,
                height: 900,
              ),

              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "DECLARANDO UMA VARIÁVEL",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 0.0),
                    child: Text(
                      "     A declaração informa o nome da variável, o seu tipo e, opcionalmente, seu valor inicial. Abaixo você poderá ver como poderão ser realizadas as declarações das variáveis:",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                 Padding(
                   padding: EdgeInsets.all(10.0),
                   child:  Image.asset(
                     "imagens/decvariaveis2.png",
                   ),
                 ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                    child: Text(
                      "     Esta é a forma mais usada quando desejamos declarar variáveis. Ela informa, em uma única declaração, as três características da variável. ",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:  Image.asset(
                      "imagens/decvariaveis1.png",
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
                    child: Text(
                      "     O segundo caso informa apenas o tipo e o nome para posteriormente quando for usado, o valor será atribuído ao mesmo.",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 10.0),
                    child: Row(
                      children: <Widget>[
                        Text("Exemplo:", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,),
                        Text(" int numero = 0;", style: TextStyle(fontSize: 18.0)),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     Bem, agora que você aprendeu como declarar uma variável, vamos para a prática, pois há apenas uma única maneira de saber se você aprendeu: por meio de exercícios. Está pronto (a)?",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),



                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Iniciar Atividade',
                      color: Colors.deepPurple,
                      pressEvent: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => TelaAtividade1()),
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
