import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/widget/pokemonCard.dart';

class Showcase extends StatefulWidget {
  @override
  _ShowcaseState createState() => _ShowcaseState();
}

class _ShowcaseState extends State<Showcase> {
  List<Pokemon> listaPokemons = [];
  Pokemon pokemon = new Pokemon(1, "Bubassauro", 10, 10, 10, 10, "Grama","https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8885c1b1-0fce-494f-9212-f76281590038/dc9lrgr-f621155c-b9d1-47ac-8edd-368050bb7e67.png/v1/fill/w_773,h_554,strp/pokemon_bulbasaur_sprite_by_animcreepha_dc9lrgr-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTU0IiwicGF0aCI6IlwvZlwvODg4NWMxYjEtMGZjZS00OTRmLTkyMTItZjc2MjgxNTkwMDM4XC9kYzlscmdyLWY2MjExNTVjLWI5ZDEtNDdhYy04ZWRkLTM2ODA1MGJiN2U2Ny5wbmciLCJ3aWR0aCI6Ijw9NzczIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.sPsM260n8s1SiTPt6hJM8pOq3_hV6x75qTNFY9c6l6w",["frango","raios"]);
  Pokemon pokemon2 = new Pokemon(2,"Charmander",12,12,12,12,"Fogo","https://i.imgur.com/So8jVZY.jpg",["Agua"]);
  Pokemon pokemon3 = new Pokemon(3,"Squirtle", 15, 15, 15, 15,"Água", "https://www.pngkey.com/png/full/439-4399737_squirtle-pokemon-squirtle-sprite.png", ["Terra"]);



  @override
  Widget build(BuildContext context) {
    listaPokemons.add(pokemon);
    listaPokemons.add(pokemon2);
    listaPokemons.add(pokemon3);
    return Scaffold(
      appBar: AppBar(
        title: Container(width:100,height:100,child: Image.asset('images/pokedex.png')),
        backgroundColor:Color.fromARGB(233, 233, 233, 141),
        shadowColor: Colors.orangeAccent,
      ),
      backgroundColor: Color.fromARGB(233, 233, 233, 141),
      body: ListView.separated(
        padding: const EdgeInsets.all(30),
        itemCount: listaPokemons.length,
        itemBuilder: (BuildContext context, int index) {
          return PokemonCard(listaPokemons[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}


