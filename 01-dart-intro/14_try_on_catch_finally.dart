void main() async {
  print('Inicio del programa');



  try {
    final value = await httpGet('https://api.example.com/data');
    print('exito: $value');
    // con este catch podemos capturar el error específico
  } on Exception catch (err) {
    print('Tenemos una excepción de tipo Exception: $err');
  } catch (err) {
    print('OPPS!! algo terrible pasó: $err');
  } finally {
    print('Esto se ejecuta siempre al final de un try/catch');
  }



  print('Final del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en la petición http');

  //throw 'Error en la petición http';

  // return 'Tenemos un valor de la petición http';
}
