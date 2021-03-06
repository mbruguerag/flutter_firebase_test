import 'package:flutter/material.dart';
import 'package:firebase/pages/appbars/appbarcontacts.dart';
import 'package:firebase/pages/appbars/appbarprofile.dart';
import 'package:firebase/pages/appbars/appbarevents.dart';
import 'package:firebase/pages/bodies/bodycontacts.dart';
import 'package:firebase/pages/bodies/bodyprofile.dart';
import 'package:firebase/pages/bodies/bodyevents.dart';
import 'package:firebase/basedades.dart';
import 'package:firebase/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _selectedIndex = 1;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<AppBar> _appbartype = <AppBar>[
    headercontacts(),
    headerprofile(),
    headerevents(),
  ];
  List<Widget> _widgetOptions = <Widget>[
    BodyContacts(),
    BodyProfile(),
    BodyEvents(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appbartype.elementAt(_selectedIndex),
        body: Center(
    child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(
          Icons.people,
        ),
        title: Text('Contactes'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        title: Text('Perfil'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.event),
        title: Text('Events'),
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.amber[800],
    onTap: _onItemTapped,
        ),
      );
  }
}
