import 'package:etaniol_gasolina/calculadora.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etanol ou Gasolina?',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.white12),
      home: Calc(),
    );
  }
}
