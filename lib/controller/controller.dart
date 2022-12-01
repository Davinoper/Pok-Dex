import 'package:pokedex/api/api.dart' as api;
import 'package:pokedex/model/pokemon.dart';

void main(){
  var a = api.fetch("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0");
  Future<Map> b;
  List pokemons = [];

  a.then((value) => {
    for( var i = 0 ; i < value['results'].length; i++ ) {
      // pokemons.add(api.fetch(value['results'][i]['url']).then((value) => null))
      api.fetch(value['results'][i]['url']).then((value2) => {
          pokemons.add(value2['name'])
      })

      // b = api.fetch(value['results'][i]['url']) ;
      // b.then((value) => {
      //   print(value.values);
      // });
    }

  });

  Controller.getPokemons();
}
class Controller{
 static Future<dynamic> getPokemons() async {
    var pokemons = await api.fetch("https://pokeapi.co/api/v2/pokemon?limit=100000&offset=0");

    return pokemons;
  }
}
//
//   const pokedex = document.getElementById('pokedex');
// //fetching pokemon's name, image, type and id from pokeapi
//   const fetchPokemon = () => {
//   const promises = [];
//   for (let i = 1; i <= 150; i++) {
//   const url = `https://pokeapi.co/api/v2/pokemon/${i}`;
//   promises.push(fetch(url).then((res) => res.json()));
//   }
//   Promise.all(promises).then((results) => {
//   const pokemon = results.map((result) => ({
//   name: result.name,
//   image: result.sprites['front_default'],
//   type: result.types.map((type) => type.type.name).join(', '),
//   id: result.id
//   }));
//   displayPokemon(pokemon);
//   });
// };
//
//   static Future<List<Pokemon> > find() async{
//     List promise = [];
//     List<Pokemon> pokemons = [];
//     for (int index = 1; index <= 150; index++) {
//     promise.add(Uri.parse("https://pokeapi.co/api/v2/pokemon/$index"));
//     }
//    promise.forEach((key, value) {
//
//    });
//
//     Endereco end = Endereco(valores[0],valores[1],valores[2],valores[3],valores[4],valores[5]);
//     return pokemons;
//   }
//
//
// }