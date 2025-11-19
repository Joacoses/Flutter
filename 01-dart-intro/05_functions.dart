void main() {
  print('Saludo: ' + greetEveryone());
  print('Suma: ${add(2, 3)}');
  print('Suma: ${addTwoNumbers(2,null)}');
  print('Suma: ${addTwoNumbers2(2)}');
}

// Secure type -> String // Prevenimos errores de tipo
// arrow function syntax
String greetEveryone() => 'Hello everyone!';

// classic function syntax
String greetEveryoneClassic() {
  return 'Hello everyone!';
}

// arrow function syntax
int add(int a, int b) => a + b;

// classic function syntax
int addClassic(int a, int b) {
  return a + b;
}

// Optional parameters using square brackets
// If b is not provided, it defaults to 0
/*
int? a; // = null
a ??= 10; // if a is null, assign 10 to a
*/
int addTwoNumbers(int a, [int? b]) {
  // traditional way
  // b = b ?? 0;
  b ??= 0;
  return a + b;
}

// in this case, we set a default value for b on the function signature
int addTwoNumbers2(int a, [int b = 0]) {
  return a + b;
}
