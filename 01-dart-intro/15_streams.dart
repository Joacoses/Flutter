void main() {

  emitNumbers().listen((value){
    print('Valor recibido en el listener: $value');
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print('Valor emitido: $value');
    return value;
  }).take(5);
}
