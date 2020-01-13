
import 'package:flutter/material.dart';
import 'package:firebase/main.dart';
import 'package:firebase/pages/Inicio.dart';

AppBar headercontacts() {
  return AppBar(
    backgroundColor: Colors.white,
        leading: IconButton( //posar icona a l'esquerra
            onPressed: (){
            },
            icon: Icon(Icons.add),
            color: Colors.transparent,
          ) ,

          actions: <Widget>[
            
            IconButton(
              onPressed: (){
                AlertDialog(

                );
              },
              icon: Icon(Icons.delete),
              color: Colors.black,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(left:59),
            child: Image.asset('assets/monefylogo.jpg', scale: 1.5,),
          ),
         elevation: 0.0,
  );
}
