import 'package:flutter/material.dart';

// stles
class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
      ),

      // body: Center(child: Text('Counter Screen')),
      body: Center(
        child: Column(
          // para alinear al centro?
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text(
              'Click${ clickCounter==1 ? '' : 's'}',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            clickCounter++;
            // el incremental puede ir dentro de la funcion setState para que lo actualice
            setState(() {});
          },
          child: const Icon(Icons.plus_one)),
    );
  }
}
