import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo2.2.dart';
import 'package:awesome_dialog/animated_button.dart';


class TelaCapitulo2 extends StatefulWidget {
  @override
  _TelaCapitulo2State createState() => _TelaCapitulo2State();
}

class _TelaCapitulo2State extends State<TelaCapitulo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CAPÍTULO 2"),
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
                height: 700,
              ),

              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Comando de decisão - if/else",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                        "Olá! Você está pronto para aprender mais? Que ótimo! Neste modo você aprenderá a como tomar decisões em seu código. ",
                        style: TextStyle(fontSize: 18.0),
                        textAlign: TextAlign.justify),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "A estrutura condicional if/else é um recurso que indica quais instruções o sistema deve processar de acordo com uma expressão booleana. Assim, o sistema testa se uma condição é verdadeira e então executa comandos de acordo com esse resultado.",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset("imagens/if4.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text("Obs.: A declaração do else não é obrigatória. Para muitas situações apenas o if é suficiente para a lógica sendo implementada.",

                      style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold ),textAlign: TextAlign.justify, )
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Continuar',
                      color: Colors.deepPurple,
                      pressEvent: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TelaCapitulo202()),
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
