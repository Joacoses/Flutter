void main() {
  // print('Saludo: ' + greetEveryone());
  // print('Suma: ${addTwoNumbers(2,null)}');
  // print('Suma: ${addTwoNumbersOptional(2)}');
  // al usar parámetros nombrados, el orden no importa
  print(greetPerson(name: 'Alice', message: 'Welcome ordered'));
  print(greetPerson(message: 'Welcome not ordered', name: 'Alice',));
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, [int? b]) {
  // traditional way
  // b = b ?? 0;
  b ??= 0;
  return a + b;
}

// in this case, we set a default value for b on the function signature
int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

// al poner llaves, los parámetros son nombrados y opcionales
// required obliga a pasar ese parámetro al llamar a la función (palabra reservada)
String greetPerson({required String name, String message = 'Hola'}) {
  return '$message, $name!';
}