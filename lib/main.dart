import 'package:flutter/material.dart';
import 'package:firebase/pages/Inicio.dart';



//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Inicio()
         );
  }
}