void main() {

  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  // podemos especificar de que tipo es la lista
  final List<String> abilities = ['Static', 'Lightning Rod'];
  // o dejarla sin especificar el tipo
  // final abilities = ['Static', 'Lightning Rod'];
  final sprites = <String>['pikachu/front.png', 'pikachu/back.png'];

  dynamic errorMessage = 'Hola';
  errorMessage = 404;
  errorMessage = true;
  errorMessage = null;
  errorMessage = [1, 2, 3];
  errorMessage = {'key': 'value'};
  errorMessage = {1, 2, 3};


  print("""
  Name: $pokemon
  HP: $hp
  Alive: $isAlive
  Abilities: $abilities
  Sprites: $sprites
  Error Message: $errorMessage
  """);
}