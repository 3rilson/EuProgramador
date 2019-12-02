import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo1.7.dart';
import 'package:eu_programador/telas/tela_capitulo1.8.dart';


class TelaCapitulo106 extends StatelessWidget {
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
                height: 600,
              ),

              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Variável do Tipo Bool",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     Esta variável serve para podermos definir um valor sendo ele VERDADEIRO ou FALSO. Em inglês representamos verdadeiro como True e falso como False.",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     Ex.: (Eu amo Programação? True), (A semana tem 9 dias? False)...",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     ",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 230.0, 50.0, 20.0),
                    child: FloatingActionButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => TelaCapitulo108()),
                        );
                      },
                      child: Icon(Icons.navigate_next,),
                      backgroundColor: Colors.deepPurple,

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
