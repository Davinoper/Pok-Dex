import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokéDex',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(233,233, 233, 141),
      body: Column(
        children:<Widget> [
          Image.asset('images/wallpPoke.png',fit: BoxFit.fitWidth),

          Container(
            width: 300,
            height: 200,
            child: Image.asset('images/fontePoke.png'),
          ),

          Container(
            height: 50,
            width: 150,
            child: FloatingActionButton.extended(
              onPressed: () {
            },
              shape: new RoundedRectangleBorder(borderRadius:
              new BorderRadius.circular(30.0)),
              icon: Container(
                height: 40,
                width: 40,
                child: Image.asset('images/pokebola.png'),
              ),
              label: const Text('Entrar',style: TextStyle(color: Colors.white, fontSize: 20)),
              backgroundColor: Color.fromARGB(233, 233, 47, 47),
            ),
          ),

        ],
      )
    );
  }
}
