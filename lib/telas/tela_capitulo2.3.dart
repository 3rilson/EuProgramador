import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_atividade2_questao1.dart';
import 'package:awesome_dialog/animated_button.dart';


class TelaCapitulo203 extends StatefulWidget {
  @override
  _TelaCapitulo203State createState() => _TelaCapitulo203State();
}

class _TelaCapitulo203State extends State<TelaCapitulo203> {
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
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "Muito bem, agora vamos a um exemplo prático de como podemos usar o if/else. Você está pronto(a)? Excelente!",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),



                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "Imagine que você, por acaso, queira descobrir a média de um aluno de acordo com suas notas escolares. Para isso, vamos considerar a média para a sua aprovação como sendo 7,0. ",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),


                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "Vamos considerar que a nota precisa ser MAIOR ou IGUAL a 7 para que o aluno tenha aprovação. Caso essa nota esteja entre 5 e 7 o aluno está na recuperação e caso essa nota seja menor que 5, o aluno estará reprovado!!!",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "Inicialmente você precisará declarar a variável que irá receber o valor da nota. Então nosso código ficará assim:",
                      style: TextStyle(fontSize: 18.0),textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset("imagens/if3.png"),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "Agora que você viu toda a parte teórica do if/else, nós vamos testar seu conhecimento com algumas questões, pode ser? Beleza! Vamos lá!",
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
                          MaterialPageRoute(builder: (context) => TelaAtividade2()),
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


