import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/model/pokemon.dart';

class PokemonAtributes extends StatelessWidget{
  final String atribute;
  final String value;

  PokemonAtributes(this.atribute,this.value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${atribute}", style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold,)),
        Text("${value}", style: TextStyle(fontSize: 20, color: Colors.black38,fontWeight: FontWeight.bold,)),
      ],
    );
  }

}