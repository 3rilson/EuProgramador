import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_menu.dart';

class TelaIntroducao extends StatelessWidget {

   @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SOBRE", style: TextStyle(fontSize: 16.0),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: <Widget>[

              Image.asset("imagens/background.jpg",
                fit: BoxFit.cover,
                height: 800.0,
              ),

              Column(
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text ("O que é o Eu Programador?",
                      style: TextStyle( fontSize:19.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify,),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0,10.0, 15.0, 10.0),
                    child: Text("Esse protótipo tem como função o ensino da linguaguem de programação C, fazendo o uso de pouco texto, atividades e figuras para um melhor entendimento do assunto.",
                      style: TextStyle( fontSize: 19.0 ),
                      textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0,10.0, 15.0, 10.0),
                    child: Text(" Desenvolvedores",
                      style: TextStyle( fontSize: 19.0, fontWeight: FontWeight.bold ),
                      textAlign: TextAlign.justify,),

                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0,10.0, 15.0, 10.0),
                    child: Text("Este protótipo foi desenvolvido pelos alunos: Antonio Erilson dos Santos Silva e Helder Santos Souza, discentes do IFCE Campus Canindé do Curso de Redes de Computadores. O projeto foi orientado pela professora Elizângela de Sousa Rebouças.",
                      style: TextStyle( fontSize: 19.0 ),
                      textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset("imagens/erilson.png",
                          fit: BoxFit.cover,
                          height: 150.0,
                        ),
                        SizedBox(width: 30.0,),
                        Image.asset("imagens/helder.png",
                          fit: BoxFit.cover,
                          height: 150.0,
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Text("      Antonio Erilson             Helder Santos", style: TextStyle( fontSize: 19.0 ),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 100.0,),
                        Image.asset("imagens/elizangela.png",
                          fit: BoxFit.cover,
                          height: 150.0,
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Text("                      Elizângela Rebouças", style: TextStyle( fontSize: 19.0 ),),
                    ],
                  ),


                ],
              ),

            ],

          ),
        ),
      ),
     // floatingActionButton: FloatingActionButton(
       // onPressed: (){
         // Navigator.push(
          //  context,
         //   MaterialPageRoute(builder: (context) => TelaMenu()),
        //  );
       // },
       // child: Icon(Icons.navigate_next),
       // backgroundColor: Colors.blue,
     // ),

    );
  }
}

