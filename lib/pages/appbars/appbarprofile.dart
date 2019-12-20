import 'package:flutter/material.dart';


AppBar headerprofile() {
  return AppBar(
    title: Text('ADIOS'),
    elevation: 0.0,
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        color: Colors.brown,
      )
    ],
  );
}
