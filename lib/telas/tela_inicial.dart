import 'package:flutter/material.dart';
import 'package:eu_programador/telas/tela_menu.dart';
import 'package:eu_programador/loader.dart';

void main() {
  runApp( MaterialApp(
    home:  MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() =>  _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (TelaMenu())),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: <Widget>[

            Image.asset("imagens/background.jpg",
            fit: BoxFit.cover,
              height: 700.0,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Image.asset(
                  'imagens/logo.png',
                  fit: BoxFit.cover,
                  height: 440.0,
                  repeat: ImageRepeat.noRepeat,
                ),

                Padding(padding: EdgeInsets.all(8.0),
                  child: Loader(),

                )

              ],
            ),

          ],

        ),
      ),


    );
  }
}



