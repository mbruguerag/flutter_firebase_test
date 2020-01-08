
//import 'package:firebase/pages/ContactPage.dart';
import 'package:firebase/AddContactPage.dart';
import 'package:firebase/pages/appbars/appbarcontacts.dart';
import 'package:firebase/pages/bodies/bodyaddcontacts.dart';
import 'package:firebase/pages/bodies/bodycontacts.dart';
import 'package:firebase/pages/bodies/bodyprofile.dart';
import 'package:flutter/material.dart';
import 'package:firebase/pages/Inicio.dart';
import 'package:firebase/pages/appbars/appbaraddcontacs.dart';



//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Inicio(),
      /*routes: {

        '/' :(context) => headercontacts(),
        '/add' : (context) => BodyProfile(),
        //'/deletecontact' : (context) => BodyDeleteContact(),
      },*/
         );
  }
}