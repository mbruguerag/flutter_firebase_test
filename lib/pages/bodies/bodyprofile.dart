//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:firebase/contactdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class Operaciones extends StatefulWidget {
  @override
  _OperacionesState createState() => _OperacionesState();
}

class _OperacionesState extends State<Operaciones> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          tabs: [
            Tab(text: 'Operaciones'),
            Tab(text: 'Pendientes'),
          ],
        ),
        body: TabBarView(
          children: [
            ListView(
              children: const <Widget>[
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
              ],
            ),
            ListView(
              children: const <Widget>[
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
                Card(child: ListTile(title: Text('One-line ListTile'))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BodyProfile extends StatefulWidget {
  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, // centrem la imatge user
      children: <Widget>[
        Expanded(flex: 4, child: Containerperfil()),
        Expanded(flex: 5, child: Operaciones()),
      ],
    );
  }
}

class Containerperfil extends StatefulWidget {
  @override
  _ContainerperfilState createState() => _ContainerperfilState();
}

class _ContainerperfilState extends State<Containerperfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 110,
              height: 110,
              //imatge usuari
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/usuario.jpg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'nom user',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                '300 €',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
