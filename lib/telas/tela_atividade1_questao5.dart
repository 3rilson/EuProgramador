import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_menu.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:awesome_dialog/animated_button.dart';


class TelaAtividadeQuestao5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ATIVIDADE 1 - CAPÍTULO 1 - VARIÁVEIS",
          style: TextStyle(fontSize: 16.0),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: <Widget>[
          Image.asset("imagens/background.jpg",
            fit: BoxFit.cover,
            height: 700,
          ),

          Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.center,
                  child: Text(
                    "5) Qual dos valores abaixo poderia ser utilizado como conteúdo para uma variável do tipo float?",
                    style: TextStyle(
                      fontSize: 28.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              Expanded(
                flex: 5,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: AnimatedButton(
                          text: '7.8',
                          color: Colors.deepPurple,
                          pressEvent: () {
                            AwesomeDialog(
                                dismissOnTouchOutside: false,
                                context: context,
                                animType: AnimType.LEFTSLIDE,
                                dialogType: DialogType.SUCCES,
                                tittle: 'SUCESSO!!!',
                                desc: 'Certa reposta!',
                                btnOkOnPress: () {},
                                btnOkIcon: Icons.check_circle,
                                onDissmissCallback: () {

                                  debugPrint('Dialog Dissmiss from callback');
                                }).show().then((value){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => TelaMenu()),
                              );

                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: AnimatedButton(
                          text: 'escola',
                          color: Colors.deepPurple,
                          pressEvent: () {
                            AwesomeDialog(
                                dismissOnTouchOutside: false,
                                context: context,
                                dialogType: DialogType.ERROR,
                                animType: AnimType.RIGHSLIDE,
                                tittle: 'Você Errou!!!',
                                desc: 'Tente novamente!',
                                btnOkOnPress: () {},
                                btnOkColor: Colors.red)
                                .show();
                          },
                        ),

                      ),

                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        child: AnimatedButton(
                          text: 'true',
                          color: Colors.deepPurple,
                          pressEvent: () {
                            AwesomeDialog(
                                dismissOnTouchOutside: false,
                                context: context,
                                dialogType: DialogType.ERROR,
                                animType: AnimType.RIGHSLIDE,
                                tittle: 'Você Errou!!!',
                                desc: 'Tente novamente!',
                                btnOkOnPress: () {},
                                btnOkColor: Colors.red)
                                .show();
                          },
                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],

      ),
    );
  }
}
