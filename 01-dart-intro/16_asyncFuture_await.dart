void main() {

  emitNumbers().
  listen((int value) {
    print('Valor recibido en el listener: $value');
  });
}



Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (var i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    // yield: permite emitir valores uno a uno
    // usamos yield en lugar de return porque return "finaliza" la función
    yield i;
  }
}