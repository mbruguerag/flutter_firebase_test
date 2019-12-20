import 'package:flutter/material.dart';
import 'package:firebase/pages/ProfilePage.dart';
import 'package:firebase/pages/ContactPage.dart';
import 'package:firebase/pages/EventPage.dart';

//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      routes: {
        '/perfil': (context) => ProfilePage(),
        '/contactes': (context) => ContactPage(),
        '/events': (context) => EventPage(),
      },
      initialRoute: '/perfil',
    );
  }
}