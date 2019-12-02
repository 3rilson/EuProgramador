import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_capitulo1.2.dart';
import 'package:awesome_dialog/animated_button.dart';


class TelaCapitulo101 extends StatelessWidget {
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
                height: 730,
              ),

              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Como isso acontece no computador?",
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     No computador, as variáveis serão armazenadas em sua memória RAM (Random Access Memory). Quando você cria as variáveis, o computador irá guardá-las automaticamente na memória RAM. Isso não é genial? =)",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image.asset("imagens/ram.png"),
                    ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     Excelente! Agora que você sabe o que são variáveis e sua função, é necessário que você saiba que existem diferentes tipos e que cada uma tem suas peculiaridades. Vamos a elas então? Vamos nessa!",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     Como já foi explicado, há diferentes tipos de variáveis, inclusive você poderá criar suas próprias, isso não é demais?",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    child: Text(
                      "     Porém, para que você entenda melhor, vamos começar com algumas mais comuns. Ok?!",
                      style: TextStyle(fontSize: 18.0), textAlign: TextAlign.justify,),
                  ),

                  Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    child: AnimatedButton(
                      text: 'Continuar',
                      color: Colors.deepPurple,
                      pressEvent: () {

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => TelaCapitulo102()),
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
