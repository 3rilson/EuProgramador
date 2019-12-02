import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo1.5.dart';


class TelaCapitulo104 extends StatelessWidget {
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
                height: 580,
              ),

              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Variável do Tipo Caractere",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     Nesse tipo, apenas um caractere pode ser armazenado. Esse caractere pode ser uma letra, um número e até símbolos, de acordo com a tabela ASCII. ",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     Aqui, os números serão interpretados apenas como caracteres, deste modo, vale ressaltar que não serão compatíveis com inteiros e/ou reais.",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     Ex.: A, c, 3, J...",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Variável do Tipo String",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     Este é um tipo de variável que representa espaços para que você possa guardar palavras além de frases e qualquer coisa que faça uso de vários caracteres. ",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),

                    child: Text(
                      "     Ex.: (Adoro o EuProgramador, programação)...",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 20.0),
                    child: FloatingActionButton(
                      onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => TelaCapitulo105()),
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
