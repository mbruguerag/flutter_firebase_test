import 'package:flutter/material.dart';


AppBar headerevents() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton( //posar icona a l'esquerra
            onPressed: (){
            },
            icon: Icon(Icons.add),
            color: Colors.transparent,
          ) ,

          title: Padding(
            padding: const EdgeInsets.only(left:59),
            child: Image.asset('assets/monefylogo.jpg', scale:1.5),
          ),
         elevation: 0.0,
  );
}