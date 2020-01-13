import 'package:flutter/material.dart';
import 'package:firebase/pages/PayContact.dart';
import 'package:firebase/pages/RequestContact.dart';
import 'package:firebase/pages/RegisterContact.dart';
import 'package:firebase/pages/LogIn.dart';
import 'package:firebase/pages/Inicio.dart';
import 'package:firebase/pages/AddContact.dart';
import 'package:firebase/pages/wrapper.dart';


//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: Wrapper(),
      theme: ThemeData(primaryColor: Colors.white),
      //home: LogIn(),
      initialRoute: '/login',
      routes: <String,WidgetBuilder>{
        '/login':(context)=>LogIn(),
        '/pay':(context)=> PayContact(),
        '/request':(context)=> RequestContact(),
        '/inicio' : (context) => Inicio(),
        '/add' : (context) => AddContact(),
        '/register':(context) => RegisterContact(),
        
      },
         );
  }
}