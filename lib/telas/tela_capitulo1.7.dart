//import 'package:flutter/material.dart';
//import 'package:eu_programador/telas/tela_capitulo1.8.dart';
//import 'package:awesome_dialog/awesome_dialog.dart';
//
//
//class TelaCapitulo107 extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("ATIVIDADE 1 - CAPITULO 1 - VARIAVEIS",
//          style: TextStyle(fontSize: 16.0),
//        ),centerTitle: true,
//        automaticallyImplyLeading: false,
//        backgroundColor: Colors.deepPurple,
//      ),
//      body: Scaffold(
//        body: Stack(
//          children: <Widget>[
//            Image.asset("imagens/background.jpg",
//              fit: BoxFit.cover,
//              height: 700,
//            ),
//
//            Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//
//                Padding(
//                  padding: EdgeInsets.fromLTRB(30.0,10.0, 30.0, 10),
//                  child: Text(
//                    "Qual das figuras abaixo contém um valor que pode vir a ser armazenado em uma variável do tipo bool",
//                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
//                  ),
//                ),
//
//                Expanded(
//                  child: GridView.count(
//                    crossAxisCount: 2,
//                    padding: EdgeInsets.all(30.0),
//                    childAspectRatio: 8.0 / 10.0,
//                    children: <Widget>[
//                      Card(
//                        clipBehavior: Clip.antiAlias,
//                        child: InkWell(
//                          onTap: (){
//                            AwesomeDialog(
//                                dismissOnTouchOutside: false,
//                                context: context,
//                                animType: AnimType.LEFTSLIDE,
//                                dialogType: DialogType.SUCCES,
//                                tittle: 'Succeso',
//                                desc:
//                                'Conseguiu entender, tudo? Excelente!!! Agora vamos aprender mais uma coisa. Vamos aprender como declarar essas variáveis.',
//                                btnOkOnPress: () {  },
//                                btnOkIcon: Icons.check_circle,
//                                onDissmissCallback: () {
//                                  debugPrint('Dialog Dissmiss from callback');
//                                }).show().then((value){
//                              Navigator.pushReplacement(
//                                context,
//                                MaterialPageRoute(builder: (context) => TelaCapitulo108()),
//                              );
//
//                            });
//
//                          },
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              AspectRatio(
//                                aspectRatio: 11.5 / 11.0,
//                                child: Image.asset(""),
//                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("Número cinco."),
//                                  ],
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Card(
//                        clipBehavior: Clip.antiAlias,
//                        child: InkWell(
//                          onTap: (){
//                            AwesomeDialog(
//                                dismissOnTouchOutside: false,
//                                context: context,
//                                dialogType: DialogType.ERROR,
//                                animType: AnimType.RIGHSLIDE,
//                                tittle: 'Errado!!!',
//                                desc:
//                                'Tente novamente!!!',
//                                btnOkOnPress: () {},
//                                btnOkColor: Colors.red)
//                                .show();
//
//                          },
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              AspectRatio(
//                                aspectRatio: 11.5 / 11.0,
//                                child: Image.asset(""),
//                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("texto da imagem"),
//                                  ],
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Card(
//                        clipBehavior: Clip.antiAlias,
//                        child: InkWell(
//                          onTap: (){
//                            AwesomeDialog(
//                                dismissOnTouchOutside: false,
//                                context: context,
//                                dialogType: DialogType.ERROR,
//                                animType: AnimType.RIGHSLIDE,
//                                tittle: 'Error',
//                                desc:
//                                'Dialog description here..................................................',
//                                btnOkOnPress: () {},
//                                btnOkColor: Colors.red)
//                                .show();
//                          },
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              AspectRatio(
//                                aspectRatio: 11.5 / 11.0,
//                                child: Image.asset(""),
//                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("texto da imagem"),
//                                  ],
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                      Card(
//                        clipBehavior: Clip.antiAlias,
//                        child: InkWell(
//                          onTap: (){
//                            AwesomeDialog(
//                                dismissOnTouchOutside: false,
//                                context: context,
//                                dialogType: DialogType.ERROR,
//                                animType: AnimType.RIGHSLIDE,
//                                tittle: 'Error',
//                                desc:
//                                'Dialog description here..................................................',
//                                btnOkOnPress: () {},
//                                btnOkColor: Colors.red)
//                                .show();
//
//                          },
//                          child: Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              AspectRatio(
//                                aspectRatio: 11.5 / 11.0,
//                                child: Image.asset(""),
//                              ),
//                              Padding(
//                                padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                                child: Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: <Widget>[
//                                    Text("texto da imagem"),
//                                  ],
//                                ),
//                              ),
//                            ],
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//
//            ),
//          ],
//
//        ),
//      ),
//    );
//  }
//}
//
//
//
//
