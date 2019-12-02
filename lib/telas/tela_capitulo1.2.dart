import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo1.3.dart';

class TelaCapitulo102 extends StatelessWidget {
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
                      "Variável do tipo int",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     Sabe aqueles números que não possuem casas decimais? Pois bem, esses números são classificados como int na linguagem C. ",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     Ex.: 1, 3, 78, 212...",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Variável do tipo float",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     São números que além de positivos, negativos e inteiros possuem casas decimais. Isso mesmo! Os números desse tipo englobam inclusive os números do tipo int. Isso não é incrível?",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     Ex.: 1.4, -7, 2.7, 5...",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),

                    child: Text(
                      "     Obs.: Números que façam uso de casas decimais, você utilizará ponto ao invés da vírgula (Fique atento que estamos falando de programação, ok?).",
                      style: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold ),textAlign: TextAlign.justify, ),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: FloatingActionButton(
                      onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCapitulo103()),
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
