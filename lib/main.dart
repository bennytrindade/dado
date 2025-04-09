import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dado",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red.shade900),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade900,
          title: Text("Dado", style: TextStyle(color: Colors.white)),
        ),
        body: Center(child: Dado()),
      ),
    );
  }
}

class Dado extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Dado();
}

class _Dado extends State<Dado> {
  int _numeroSorteado = 1;

  void _rolarDado() {
    setState(() {
      _numeroSorteado = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Text("$_numeroSorteado", style: TextStyle(fontSize: 48)),
        Image.asset("assets/dado_$_numeroSorteado.png", width: 250),
        SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            _rolarDado();
          },
          child: Text("Rolar o dado", style: TextStyle(fontSize: 24)),
        ),
      ],
    );
  }
}
