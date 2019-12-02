import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo2.3.dart';
import 'package:awesome_dialog/animated_button.dart';


class TelaCapitulo202 extends StatefulWidget {
  @override
  _TelaCapitulo202State createState() => _TelaCapitulo202State();
}

class _TelaCapitulo202State extends State<TelaCapitulo202> {
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
          child:Stack(
            children: <Widget>[

              Image.asset("imagens/background.jpg",
                fit: BoxFit.cover,
                height: 700,
              ),

              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "A sintaxe desta estrutura está demonstrada logo abaixo. Vamos dar uma olhada!!!",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset("imagens/if1.png"),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "Caso a expressão booleana seja verdadeira, as instruções entre chaves presentes no código 1 serão executadas; caso contrário, serão executadas as instruções presentes no código 2.",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),

                  Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                      child: Text("Obs.: Expressão Booleana é aquela onde você pode ter como respostas as seguintes sentenças: Verdadeiro ou Falso.",

                        style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold ),textAlign: TextAlign.justify, ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "Há também o else if que serve para testar a condição caso a anterior falhe. ",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "A sintaxe desta estrutura está demonstrada logo abaixo. Vamos dar uma olhada!!!",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),



                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset("imagens/if2.png"),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "A expressão 1 será testada, caso ela não seja atendida, passa para a segunda. Caso essa segunda expressão também não seja atendida, então o programa executará a terceira. ",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Continuar',
                      color: Colors.deepPurple,
                      pressEvent: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => TelaCapitulo203()),
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

