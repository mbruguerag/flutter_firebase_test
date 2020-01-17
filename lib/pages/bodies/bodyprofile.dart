import 'package:firebase/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase/contactdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase/basedades.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/basedades.dart';
import 'package:firebase/login.dart';
import 'package:firebase/models/user.dart';

class BodyProfile extends StatefulWidget {
  @override
  _BodyProfileState createState() => _BodyProfileState();
}

class _BodyProfileState extends State<BodyProfile> {
  final _formKey = GlobalKey<FormState>();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData userData = snapshot.data;
            return Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.stretch, // centrem la imatge user
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(color: Colors.white),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(
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
                                        image: AssetImage('assets/profile_picture.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            color: Colors.white,
                            child: Align(
                              child: IconButton(
                                icon: Icon(
                                  Icons.exit_to_app,
                                ),
                                onPressed: () async {
                                  await _auth.signOut();
                                },
                              ),
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 3, child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,children: <Widget>[Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0, right: 8, top:8),
                                      child: Container(
                                        child: Center(
                                          child: Text(
                                            userData
                                                .username, //userData.username,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 32,
                                              fontWeight: FontWeight.w800
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8, right:8, top:8),
                                      child: Container(color: Colors.white,
                                        width: 110,
                                        height: 80,
                                        child: Center(
                                          child: Text(
                                            userData.saldo.toString() + '€',
                                            style: TextStyle(
                                              fontSize: 42,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),],),),
                  Expanded(
                    flex: 6,
                    child: DefaultTabController(
                      length: 2,
                      child: Scaffold(
                        appBar: TabBar(
                          indicatorColor: Colors.yellow[700],
                          labelColor: Colors.black87,
                          unselectedLabelColor: Colors.black38,
                          tabs: [
                            Tab(text: 'Operacions'),
                            Tab(text: 'Pendents'),
                          ],
                        ),
                        body: TabBarView(
                          children: [
                            ListView(
                              children: const <Widget>[
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                              ],
                            ),
                            ListView(
                              children: const <Widget>[
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                                Card(
                                    child: ListTile(
                                        title: Text('One-line ListTile'))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        });
  }
}
