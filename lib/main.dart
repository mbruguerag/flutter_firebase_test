import 'package:flutter/material.dart';
import 'package:firebase/pages/PayContact.dart';
import 'package:firebase/pages/RequestContact.dart';
import 'package:firebase/authenticates/RegisterContact.dart';
import 'package:firebase/authenticates/LogIn.dart';
import 'package:firebase/pages/Inicio.dart';
import 'package:firebase/pages/AddContact.dart';
import 'package:firebase/pages/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:firebase/services/auth.dart';
import 'models/user.dart';

//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        routes: <String, WidgetBuilder>{
          '/pay': (context) => PayContact(),
          '/request': (context) => RequestContact(),
          '/add': (context) => AddContact(),
        },
      ),
    );
  }
}
