import 'package:flutter/material.dart';


AppBar headerlogin() {
  return AppBar(
    backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left:20),
            child: Image.asset('assets/monefylogo.jpg', scale:1.5),
          ),
         elevation: 0.0,
  );
}