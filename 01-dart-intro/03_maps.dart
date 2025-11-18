// dynamic puede ser cualquier tipo de dato
// dynamic === null por defeto

void main() {

  final Map<String, dynamic> pokemon = { 
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'abilities': ['Static', 'Lightning Rod'],
    'sprites': {'front': 'pikachu/front.png', 'back': 'pikachu/back.png'},
  };

  print('Pokemon: $pokemon');
  print('Name: ${pokemon['name']}');
  print('Back: ${pokemon['sprites']['back']}');
  print('Front: ${pokemon['sprites']['front']}');
}