import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_atividade2_questao2.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:awesome_dialog/animated_button.dart';

class TelaAtividade2 extends StatefulWidget {
  @override
  _TelaAtividade2State createState() => _TelaAtividade2State();
}

class _TelaAtividade2State extends State<TelaAtividade2> {
  List selecionado = [];
  List respostaCerta = ["if", "else"];
  List respostas = ["for", "if", "senao", "else", "while"];
  List<bool> cardCinzaAux = [
    true,
    true
  ]; //Ele diz se os elementos cinzas estao ocupados ou vazios
  List<InkWell> cardCinzas = [
    new InkWell(
      child: Card(
        //esse card sao as lacunas por baixo das opções
        elevation: 10,
        child: Container(
          height: 35,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.grey),
        ),
      ),
    ),
    new InkWell(
        child: Card(
      //esse card sao as lacunas por baixo das opções
      elevation: 12,
      child: Container(
        height: 35,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.grey),
      ),
    ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ATIVIDADE 1 - CAPÍTULO 2 - CONDICIONAIS",
          style: TextStyle(fontSize: 16.0),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'imagens/background.jpg',
            fit: BoxFit.cover,
            height: 700.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 100.0),
                child: Text(
                  "1) Abaixo temos um pequeno código que requer a utilização de condicionais. Clique nas opções que você acha que complete corretamente as lacunas.",
                  style: TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  elevation: 12,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            cardCinzas[0],
                            Text(
                              "(Soma > 10)", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("{", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "     printf('Soma é maior que 10');", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "}", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                            cardCinzas[1],
                            Text(
                              "{", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "     printf('Soma é menor que 10');", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "}", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Wrap(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: respostas.map((m) {
                        return Stack(
                          children: <Widget>[
                            Card(
                              //esse card sao as lacunas por baixo das opções
                              elevation: 12,
                              child: Container(
                                height: 35,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    color: Colors.grey),
                                child: Center(
                                  child: Text(m),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
//                                if (selecionado.length == respostas.length) {
//                                  print("favor remover os itens acima");
//                                  return;
//                                }
                                  selecionado.add(m); //respostas.remove(m);

                                  int i = 0;
                                  bool podefazer = false;
                                  for (i = 0; i < cardCinzas.length; i++) {
                                    if (cardCinzaAux[i] == true) {
                                      podefazer = true;
                                      cardCinzaAux[i] = false;
                                      break;
                                    }
                                  }

                                  InkWell elementoFormatado = InkWell(
                                    onTap: () {
                                      setState(() {
                                        selecionado.remove(m);

                                        cardCinzaAux[i] = true;
                                        print(cardCinzaAux.toString());
                                        cardCinzas[i] = new InkWell(
                                            child: Card(
                                          //esse card sao as lacunas por baixo das opções

                                          elevation: 12,
                                          child: Container(
                                            height: 35,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5)),
                                                color: Colors.grey),
                                          ),
                                        ));
                                        //acerto = "";
                                      });
                                    },
                                    child: Card(
                                      elevation: 12,
                                      child: Container(
                                        height: 35,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        child: Center(
                                          child: Text(m),
                                        ),
                                      ),
                                    ),
                                  );

                                  if (podefazer == true) {
                                    print("Esta adicionando novos elementos" +
                                        i.toString());
                                    cardCinzas[i] = elementoFormatado;
                                  }

                                  print(respostaCerta.toString());
                                  print(selecionado.toString());
                                });
                              },
                              child: Card(
                                elevation: 12, //sombra das opções
                                child: Container(
                                  height: 35, //altura das opções
                                  width: 40, //largura das opções

                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Center(
                                    child: Text(m),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }).toList()),

                  // Text(acerto ?? "", style: TextStyle(fontSize: 40, color: Colors.green, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: AnimatedButton(
                  text: 'OK',
                  color: Colors.deepPurple,
                  pressEvent: () {
                    if (respostaCerta.toString() == selecionado.toString()) {
                      AwesomeDialog(
                          context: context,
                          animType: AnimType.LEFTSLIDE,
                          dialogType: DialogType.SUCCES,
                          tittle: 'SUCESSO!!!',
                          desc: 'Certa reposta!',
                          btnOkOnPress: () {},
                          btnOkIcon: Icons.check_circle,
                          onDissmissCallback: () {
                            debugPrint('Dialog Dissmiss from callback');
                          }).show().then((value) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaAtividade2Questao2()),
                        );
                      });
                    } else if (selecionado.isEmpty == true) {
                      AwesomeDialog(
                              context: context,
                              dialogType: DialogType.WARNING,
                              animType: AnimType.TOPSLIDE,
                              tittle: 'AVISO!',
                              desc: 'Nenhuma item foi selecionado!!!',
                              btnOkOnPress: () {},
                              btnOkColor: Colors.orangeAccent)
                          .show();
                    } else {
                      AwesomeDialog(
                              context: context,
                              dialogType: DialogType.ERROR,
                              animType: AnimType.RIGHSLIDE,
                                tittle: 'Você Errou!!!',
                                desc: 'Tente novamente!',
                              btnOkOnPress: () {
                                setState(() {
                                  selecionado.removeRange(
                                      0, selecionado.length);
                                  for (int indice = 0;
                                      indice < cardCinzaAux.length;
                                      indice++) {
                                    cardCinzaAux[indice] = true;
                                  }
                                  for (int i = 0; i < cardCinzas.length; i++) {
                                    cardCinzas[i] = new InkWell(
                                        child: Card(
                                      //esse card sao as lacunas por baixo das opções
                                      elevation: 12,
                                      child: Container(
                                        height: 35,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Colors.grey),
                                      ),
                                    ));
                                  }
                                  print("Removeu");
                                  //acerto = "";
                                });
                              },
                              btnOkColor: Colors.red)
                          .show();
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
