void main() {
  print('Inicio del programa');

  //httpGet('https://api.example.com/data').then((value) => print(value));
  httpGet('https://api.example.com/data').then((value) {
    print(value);
  }).catchError((err) {
    print('Tenemos un error en la petición http: $err');
  });

  print('Final del programa');
}

Future<String> httpGet(String url) {
  // como no van a cambiar, lo podemos dejar como constante
  return Future.delayed(const Duration(seconds: 3), () {
    throw 'Error en la petición http';
    //return 'Respuesta de la petición http a la url: $url';
  });
}
