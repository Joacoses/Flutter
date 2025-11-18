void main() {

 final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10]; 

  print('Listado original: $numbers');
  print('${numbers.length}');
  print('Index 0: ${numbers[0]}');
  // otra forma de obtener el primero o el ultimo es con first y last
  print('First: ${numbers.first}');
  print('Last: ${numbers.last}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  // convertir a Set elimina los duplicados
  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((num) => num > 5);
  print('Numbers greater than 5: $numbersGreaterThan5');
  print('Numbers greater than 5 (set): ${numbersGreaterThan5.toSet()}');
  print('Numbers greater than 5 (list): ${numbersGreaterThan5.toList()}');

}
//
