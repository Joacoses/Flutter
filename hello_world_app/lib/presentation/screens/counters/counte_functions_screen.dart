import 'package:flutter/material.dart';

// stles
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Counter Screen')),
          // para la izquierda
          leading:
              IconButton(icon: Icon(Icons.refresh_rounded), onPressed: () {}),
          //para la derecha
          actions: [
            IconButton(
                icon: Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                }),
          ],
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
                'Click${clickCounter == 1 || clickCounter == -1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.refresh_outlined,
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                icon: Icons.exposure_minus_1_outlined,
                onPressed: () {
                  if (clickCounter == 0) return;
                  clickCounter--;
                  setState(() {});
                }),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  //parametros a recibir
  final IconData icon;

  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 7.5,
      onPressed: onPressed, 
      child: Icon(icon));
  }
}
