void main() async{
  print('Inicio del programa');

  try{
    final value = await httpGet('https://api.example.com/data');
    print(value);
  } catch (err) {
    print('Tenemos un error en la petición http: $err');
  }

  print('Final del programa');
}

Future<String> httpGet(String url) async {

  await Future.delayed(const Duration(seconds: 1));
  
  //throw 'Error en la petición http';

  return 'Tenemos un valor de la petición http';

}
