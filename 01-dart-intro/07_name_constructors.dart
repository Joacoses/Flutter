void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Bruce Wayne',
    'power': 'Dinero',
    'isAlive': true
  };

  final batmanReal = Hero.fromJson(rawJson);
  print(batmanReal);

  final batman = new Hero(name: 'Batman', power: 'Oscuridad', isAlive: true);
  print(batman);
}


// Constructor con nombre
class Hero {
  String name;
  String power;
  bool isAlive;

// constructor con nombre
  Hero({
    required this.name,
    this.power = 'Sin poder',
    this.isAlive = true,
  });

// constructor con nombre desde JSON
  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No powers',
        isAlive = json['isAlive'] ?? false;

// siempre dentro de la clase y debajo del constructor
// sobreescribir el método toString para imprimir instancias y que no salga "Instance of 'Hero'"
// sobreescribimos el método nativo toString
  @override
  String toString() {
    // isAlive ==(?) true -> 'Alive' else(:) 'Dead'
    return 'Hero: $name - Power: $power - isAlive: ${isAlive ? 'Alive' : 'Dead'}';
  }
}
