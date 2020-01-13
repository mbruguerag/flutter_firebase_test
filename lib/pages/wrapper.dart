import 'package:flutter/material.dart';
import 'package:firebase/models/user.dart';
import 'package:provider/provider.dart';
import 'package:firebase/pages/Inicio.dart';
import 'package:firebase/authenticates/authenticates.dart';
import 'package:firebase/authenticates/LogIn.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return LogIn();
    } else {
      return Authentificate();
    }
  }
}
