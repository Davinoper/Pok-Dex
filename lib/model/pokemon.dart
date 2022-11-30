class Pokemon{
  int id;
  String nome;
  double attack;
  double speed;
  double life;
  double defense;
  String element;
  String imageUrl;
  List<String> weakness;

  Pokemon(int id, String nome, double attack, double speed, double life, double defense, String element, String imageUrl, List<String>? weakness):
    this.id =id,
    this.nome = nome,
    this.attack = attack,
    this.speed = speed,
    this.life = life,
    this.defense = defense,
    this.element = element,
    this.imageUrl = imageUrl ?? " ",
    this.weakness = weakness ?? [];





}



