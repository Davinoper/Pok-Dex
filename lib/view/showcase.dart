import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Showcase extends StatefulWidget {
  @override
  _ShowcaseState createState() => _ShowcaseState();
}

class _ShowcaseState extends State<Showcase> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(width:100,height:100,child: Image.asset('images/pokedex.png')),
        backgroundColor:Color.fromARGB(233, 233, 233, 141),
        shadowColor: Colors.orangeAccent,
      ),
      backgroundColor: Color.fromARGB(233, 233, 233, 141),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 100,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black,width: 2)
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}


