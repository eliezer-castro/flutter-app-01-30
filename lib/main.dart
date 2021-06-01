import 'package:flutter/material.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quando o valor é $_counter')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardCount(2, _counter * 2),
                      CardCount(3, _counter * 3),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardCount(4, _counter * 4),
                      CardCount(5, _counter * 5),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: _reset,
                    tooltip: 'Increment',
                    child: Icon(Icons.refresh_outlined),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Decrement',
                    child: Icon(Icons.add),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CardCount extends StatelessWidget {
  CardCount(this.number, this.result);

  int number;
  int result;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        child: Column(
          children: [
            Center(
              child: Text(
                'Multiplicado por $number é:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: Text(
                '$result',
                style: TextStyle(
                  fontSize: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
