import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/widget/pokemonCard.dart';

class Showcase extends StatefulWidget {
  @override
  _ShowcaseState createState() => _ShowcaseState();
}

class _ShowcaseState extends State<Showcase> {
  Pokemon pokemon = new Pokemon(1, "Bubassauro", 10, 10, 10, 10, "Grama","https://pbs.twimg.com/media/FEXNb19XMAU4_xu.png",["frango","raios"]);

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
        padding: const EdgeInsets.all(30),
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return PokemonCard(pokemon);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}


