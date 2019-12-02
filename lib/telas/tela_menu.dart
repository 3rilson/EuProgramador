import 'dart:io';
import 'package:eu_programador/telas/tela_capitulo0.dart';
import 'package:eu_programador/telas/tela_introducao.dart';
import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo1.dart';
import 'package:eu_programador/telas/tela_capitulo2.dart';
import 'package:eu_programador/telas/tela_capitulo3.dart';


class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {

  Future<bool> _sairDoApp(){
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Tem certeza?"),
            content: Text("Você realmente deseja sair?"),
            actions: <Widget>[
              FlatButton(
                child: Text("NÃO"),
                onPressed: (){
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text("SIM"),
                onPressed: (){
                  Navigator.of(context).pop(true);
                  exit(0);
                },
              )
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize( //define tamanho do appBar
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            title: Text("MENU"),
            centerTitle: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.deepPurple,
            actions: <Widget>[
              IconButton(icon: Icon (Icons.info_outline), onPressed: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaIntroducao()),

                );
              }) //info
            ],
          ),
        ),
        body: WillPopScope(

          onWillPop: _sairDoApp,
          child: Stack(
            children: <Widget>[
              Image.asset("imagens/background.jpg",
              fit: BoxFit.cover,
                height: 700,
                width: 700,
              ),
              ListView(
                children: <Widget>[

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                        child: Icon(Icons.done_outline),
                        foregroundColor: Colors.green,

                    ),
                    title: Text(
                      'Capítulo 0',
                    ),
                    subtitle: Text('Conceitos iniciais'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCapitulo0()),
                      );

                      print('Pressionado');
                    },
                  ),

                  Divider(
                    height: 1.0,
                    indent: 1.0,
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.done_outline),
                      foregroundColor: Colors.green,
//                      backgroundImage: AssetImage("icons/v.png"),

                    ),
                    title: Text(
                      'Capítulo 1',
                    ),
                    subtitle: Text('Variáveis'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCapitulo1()),
                      );

                      print('Pressionado');
                    },
                  ),

                  Divider(
                    height: 1.0,
                    indent: 1.0,
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.done_outline),
                      foregroundColor: Colors.green,
                    ),
                    title: Text('Capítulo 2'),
                    subtitle: Text('Condicionais - if/else'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCapitulo2()),
                      );
                      print('Pressionado');


                    },
//              onLongPress: () {
//                Text('Data');
//              },
                  ),

                  Divider(
                    height: 1.0,
                    indent: 1.0,
                    color: Colors.black,
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.done_outline),
                      foregroundColor: Colors.green,
                    ),
                    title: Text('Capítulo 3'),
                    subtitle: Text('Condicionais - switch'),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TelaCapitulo3()),
                      );
                      print('Pressionado');
                    },
                  ),

                  Divider(
                    height: 5.0,
                    indent: 5.0,
                    color: Colors.black,
                  ),
//                  ListTile(
//                    leading: CircleAvatar(
//                      backgroundColor: Colors.white,
//                      backgroundImage: AssetImage("icons/empty.png"),
//                    ),
//                    title: Text(
//                      'Capitulo 4',
//                    ),
//                    subtitle: Text('vazio'),
//                    trailing: Icon(Icons.keyboard_arrow_right),
//                    onTap: (){
//                      print('Pressionado');
//                    },
//
//                  ),


                ],
              ),
            ],
          ),
        ),
      );
  }
}

