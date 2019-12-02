import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo1.3.1.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class TelaCapitulo103 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATIVIDADE 1 - CAPÍTULO 1 - VARIÁVEIS",
          style: TextStyle(fontSize: 16.0),
        ),centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
      ),
      body: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset("imagens/background.jpg",
              fit: BoxFit.cover,
              height: 700,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: EdgeInsets.fromLTRB(30.0,10.0, 30.0, 10),
                  child: Text(
                    "Antes de seguirmos, vamos testar se você entendeu. Clique abaixo na figura que contém um valor que pode ser armazenado como inteiro.",
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                  ),
                ),

                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(30.0),
                    childAspectRatio: 8.0 / 10.0,
                    children: <Widget>[
                      Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ) ,
                        child: InkWell(
                          onTap: (){
                            AwesomeDialog(
                                dismissOnTouchOutside: false,
                                context: context,
                                animType: AnimType.LEFTSLIDE,
                                dialogType: DialogType.SUCCES,
                                tittle: 'SUCESSO!!!',
                                desc: 'Certa reposta!',
                                btnOkOnPress: () {  },
                                btnOkIcon: Icons.check_circle,
                                onDissmissCallback: () {
                                  debugPrint('Dialog Dissmiss from callback');
                                }).show().then((value){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => TelaCapitulo10301()),
                              );

                            });

                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 11.5 / 11.0,
                                child: Image.asset("icons/5.png"),
                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("NÚMERO 5"),
//                                  ],
//                                ),
//                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        child: InkWell(
                          onTap: (){
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 11.5 / 11.0,
                                child: Image.asset("icons/t.png"),
                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("LETRA 'T'"),
//                                  ],
//                                ),
//                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        child: InkWell(
                          onTap: (){
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 11.5 / 11.0,
                                child: Image.asset("icons/8.png"),
                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("OITO PONTO UM"),
//                                  ],
//                                ),
//                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        child: InkWell(
                          onTap: (){
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 11.5 / 11.0,
                                child: Image.asset("icons/z.png"),
                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("LETRA 'Z'"),
//                                  ],
//                                ),
//                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

            ),
          ],

        ),
      ),
    );
  }
}
