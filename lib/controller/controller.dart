// import 'package:pokedex/api/api.dart' as api;
// import 'package:pokedex/model/pokemon.dart';
//
// class Controller{
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