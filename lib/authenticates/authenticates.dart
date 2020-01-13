import 'package:firebase/authenticates/LogIn.dart';
import 'package:firebase/authenticates/RegisterContact.dart';
import 'package:firebase/services/auth.dart';
import 'package:flutter/material.dart';

class Authentificate extends StatefulWidget {

  @override
  _AuthentificateState createState() => _AuthentificateState();
}

class _AuthentificateState extends State<Authentificate> {
 
 bool showSignIn=true;

void toggleView(){
  setState(()=>showSignIn=!showSignIn);
}
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return LogIn(toggleView:toggleView);
    } else {
      return RegisterContact(toggleView:toggleView);
    }
  }
}