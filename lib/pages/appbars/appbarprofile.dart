import 'package:flutter/material.dart';


AppBar headerprofile() {
  return AppBar(
    backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.exit_to_app),
              color: Colors.black,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(left:80),
            child: Image.asset('assets/monefylogo.jpg', fit:BoxFit.cover),
          ),
         elevation: 0.0,
  );
}