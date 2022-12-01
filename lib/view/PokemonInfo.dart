import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/widget/pokemonAtributes.dart';



class Pokemonstatus extends StatelessWidget {
  final Pokemon pokemon;

  Pokemonstatus(this.pokemon, {Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromARGB(233, 233, 233, 141),
        appBar: AppBar(
          backgroundColor:Color.fromARGB(246, 246, 249,215 ),
        ),
        body: Column(
          children: [
            Container(
            height: 300,
            width: 800,
            decoration: BoxDecoration(
              color: Color.fromARGB(246, 246, 249,215 ),
            ),
             child: Column(
               children: [
                 Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('images/pokebolaBranca.png'),
                    ),
                    Text(
                      "${pokemon.nome.toUpperCase()}",
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                 ),
                 Column(
                   children: [
                     Center(
                       child: Container(height: 200,width: 200,child: Image.network(pokemon.imageUrl,fit:BoxFit.fitHeight), ),
                     )
                   ],
                 ),
               ],
             ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 177, 177, 177),
                      border: Border.all(color: Colors.white,width: 4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        PokemonAtributes('ATK',pokemon.attack.toString()),
                        PokemonAtributes('SPD',pokemon.speed.toString()),
                        PokemonAtributes('HP',pokemon.life.toString()),
                        PokemonAtributes('DEF',pokemon.defense.toString()),
                        PokemonAtributes('ELE',pokemon.element),
                      ],
                    ),
                  )
                ],
              ),
            ),
            PokemonAtributes("Fraquezas:", pokemon.weakness.toString()),
          ],

        ),
      );
    }




}
