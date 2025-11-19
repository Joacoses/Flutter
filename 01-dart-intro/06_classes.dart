void main() {
  // hasta forma corta en Dart
  // final deadpool = new Hero('Deadpool', 'Regeneración rápida');
  final deadpool = new Hero(name: 'Deadpool', power: 'Regeneración rápida');
  print(deadpool);
  print('Nombre: ${deadpool.name}');
  print('Poder: ${deadpool.power}');
}

class Hero {
  String name;
  String power;

// forma tradicional en otros lenguajes
/*   Hero(String pName, String pPower){
    // en las clases, this es opcional
    this.name = pName;
    this.power = pPower;
  } */


//forma tradicional en Dart
/*    Hero(String pName, String pPower)
      : name = pName,
        power = pPower; */


// forma corta en Dart
  /* Hero(this.name, this.power); */

// forma con parámetros nombrados
  Hero({
    required this.name, 
    this.power = 'Sin poder',
    });

// siempre dentro de la clase y debajo del constructor
// sobreescribir el método toString para imprimir instancias y que no salga "Instance of 'Hero'"
// sobreescribimos el método nativo toString
  @override
  String toString() {
    // return 'Hero(name: $name, power: $power)';
    return 'Hero: $name - Power: $power';
  }

}
