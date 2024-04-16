import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      home: const MyHomePage(title: 'Buy Pizza'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  final int _pizzaUnitPrice = 5;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    const spacing = SizedBox(width: 50);
    const textStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      color: Color.fromARGB(255, 179, 33, 33),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          widget.title,
          style: textStyle.copyWith(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/pizza.png'),
            spacing,
            const Text('x', style: textStyle),
            spacing,
            Text('$_counter', style: textStyle),
            const SizedBox(width: 16),
            const Text('=', style: textStyle),
            spacing,
            Text(
              '\$${(_pizzaUnitPrice * _counter).toStringAsFixed(2)}',
              style: textStyle.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
