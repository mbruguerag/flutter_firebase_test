import 'package:flutter/material.dart';

AppBar headercontacts() {
  return AppBar(
    backgroundColor: Colors.white,
          leading: IconButton( //posar icon a l'esquerra
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.black,
          ) ,

          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.delete),
              color: Colors.black,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(left:24),
            child: Image.asset('assets/monefylogo.jpg', fit:BoxFit.cover),
          ),
         elevation: 0.0,
  );
}
