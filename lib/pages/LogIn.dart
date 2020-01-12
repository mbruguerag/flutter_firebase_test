import 'package:firebase/pages/appbars/appbarlogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase/pages/appbars/appbarlogin.dart';
import 'package:firebase/pages/bodies/bodylogin.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerlogin(),
      body: BodyLogIn(),
      
    );
  }
}
