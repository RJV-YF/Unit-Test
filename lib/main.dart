import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// bool isEven(int number) {
//   if (number % 2 == 0) {
//     return true;
//   } else {
//     return false;
//   }
// }

bool isEven(int number) => number % 2 == 0 ? true : false;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  Color color = Colors.red;

  void _incrementCounter() {
    setState(() {
      _counter++;
      // if (isEven(_counter)) {
      //   color = Colors.red;
      // } else {
      //   color = Colors.green;
      // }
      isEven(_counter) ? color = Colors.red : color = Colors.green;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'You have pressed the button $_counter times',
          style: TextStyle(
            fontSize: 16,
            color: color,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
