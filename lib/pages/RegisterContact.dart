import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase/pages/appbars/appbarregister.dart';
import 'package:firebase/pages/bodies/bodyregister.dart';

class RegisterContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerregister(),
      body: BodyRegister(),
    );
  }
}