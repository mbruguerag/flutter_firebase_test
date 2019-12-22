import 'package:flutter/material.dart';


AppBar headerevents() {
  return AppBar(
    backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left:115),
            child: Image.asset('assets/monefylogo.jpg', scale:1.5),
          ),
         elevation: 0.0,
  );
}