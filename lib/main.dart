import 'package:firebase/pages/PayContact.dart';
import 'package:firebase/pages/ProfileContact.dart';
import 'package:firebase/pages/RequestContact.dart';
import 'package:firebase/pages/LogIn.dart';
import 'package:flutter/material.dart';
import 'package:firebase/pages/Inicio.dart';
import 'package:firebase/pages/AddContact.dart';



//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      //home: LogIn(),
      initialRoute: '/login',
      routes: <String,WidgetBuilder>{
        '/login':(context)=>LogIn(),
        '/pay':(context)=> PayContact(),
        '/request':(context)=> RequestContact(),
        '/inicio' : (context) => Inicio(),
        '/add' : (context) => AddContact(),
      },
         );
  }
}