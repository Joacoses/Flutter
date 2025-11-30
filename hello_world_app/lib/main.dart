import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counters/counte_functions_screen.dart';
//import 'package:hello_world_app/presentation/screens/counters/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // este super.key es la inicializacion del widget, necesario para acceder
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // cuando ponemos 'const' significa que esto nunca va a cambiar
    return MaterialApp(
      // quitar debug
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal
      ),
      home: CounterFunctionsScreen()
    );
  }
}
