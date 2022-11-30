import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/widget/pokemonAtributes.dart';

class PokemonCard extends StatelessWidget{
  Pokemon pokemon;

  PokemonCard(this.pokemon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pokemonId = pokemon.id.toString();
    
    return GestureDetector(
      onTap: () {
          print("Clicou");
      },
      child: Container(
        height: 350,
        width: 40,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
        ),
        child: Column(
          children: [
          Text(
          '#00' + pokemonId,
          style: const TextStyle(
            fontSize: 20,
            height: 1,
            fontWeight: FontWeight.bold,
            color: Colors.black38,
          ),
          ),
            Text(
              "${pokemon.nome.toUpperCase()}",
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Container(
              height: 150,
              width: 270,
              decoration: BoxDecoration(
                color: Color.fromARGB(233, 233, 233, 141),
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(pokemon.imageUrl, fit: BoxFit.fitHeight),
            ),
           Column(
             children: [
               PokemonAtributes("Elemento", pokemon.element),
               PokemonAtributes("Ataque", pokemon.attack.toString()),

             ],
           ),
          ],

        ),

      ),
    );

  }

}
