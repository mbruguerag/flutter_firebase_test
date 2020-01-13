import 'package:flutter/material.dart';
import 'package:firebase/models/user.dart';
import 'package:provider/provider.dart';
import 'package:firebase/pages/Inicio.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Container(child: Text('Authenticate'));
    } else {
      return Inicio();
    }
  }
}
