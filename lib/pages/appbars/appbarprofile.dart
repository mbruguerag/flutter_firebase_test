import 'package:flutter/material.dart';


AppBar headerprofile() {
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
              onPressed: (){},
              icon: Icon(Icons.exit_to_app),
              color: Colors.black,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(left:115),
            child: Image.asset('assets/monefylogo.jpg', scale:1.5),
          ),
         elevation: 0.0,
  );
}