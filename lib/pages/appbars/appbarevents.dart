import 'package:flutter/material.dart';


AppBar headerevents() {
  return AppBar(
    title: Text('events'),
    elevation: 0.0,
    centerTitle: true,
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        color: Colors.red,
      )
    ],
  );
}
