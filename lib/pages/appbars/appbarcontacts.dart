

import 'package:firebase/pages/appbars/appbaraddcontacs.dart';
import 'package:flutter/material.dart';
import 'package:firebase/pages/bodies/bodyaddcontacts.dart';
import 'package:firebase/main.dart';

AppBar headercontacts() {
  return AppBar(
    backgroundColor: Colors.white,
        
          leading: IconButton( //posar icona a l'esquerra
            onPressed: (){
            BuildContext context;
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> headeraddcontacts() ));
            },
            icon: Icon(Icons.add),
            color: Colors.black,
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
