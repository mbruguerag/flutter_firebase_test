import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase/services/auth.dart';

class RegisterContact extends StatefulWidget {
  final Function toggleView;
  RegisterContact({this.toggleView});

  @override
  _RegisterContactState createState() => _RegisterContactState();
}

class _RegisterContactState extends State<RegisterContact> {
  String email = '';
  String username = '';
  String password = '';
  String error = '';

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset('assets/monefylogo.jpg', scale: 1.5),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // centrem la imatge
              children: <Widget>[
                Expanded(
                  flex: 0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 30),
                        child: Image.asset('assets/usuario.jpg', scale: 5.0),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(14),
                        child: Text(
                          'E-mail',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 45.0,
                          child: TextFormField(
                            validator: (val) =>
                                val.isEmpty ? 'Enter your email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                            //obscureText: true,
                            cursorColor: Colors.black87,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'E-mail',
                              fillColor: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(14),
                        child: Text(
                          'Nom',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 45.0,
                          child: TextFormField(
                            validator: (val) =>
                                val.isEmpty ? 'Introduïr nom' : null,
                            onChanged: (val) {
                              setState(() => username = val);
                            },
                            //obscureText: true,
                            cursorColor: Colors.black87,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Nom',
                              fillColor: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        padding: EdgeInsets.all(14),
                        child: Text(
                          'Contrassenya',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: EdgeInsets.all(5),
                        child: SizedBox(
                          height: 54.0,
                          child: TextFormField(
                            validator: (val) => val.length < 6
                                ? 'Entri una contrassenya de mínim 6 caracters'
                                : null,
                            onChanged: (val) {
                              setState(() => password = val);
                            },
                            obscureText: true,
                            cursorColor: Colors.black87,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Contrassenya',
                              fillColor: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                            width: 80,
                          ),
                          RaisedButton(
                            color: Colors.blue,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                dynamic result =
                                    await _auth.registerWithEmailAndPassword(
                                        email, password);
                                if (result == null) {
                                  setState(() => error ='Siusplau, entri un correu vàlid');
                                }
                              }
                            },
                            textColor: Colors.white,
                            child: Container(
                              child: Text('Registrar-se'),
                              padding: EdgeInsets.all(10.0),
                            ),
                          ),
                          
                          RaisedButton(
                            color: Colors.blue,
                            onPressed: () {
                              //Navigator.pushNamed(context, '/register');
                              widget.toggleView();
                            },
                            textColor: Colors.white,
                            child: Container(
                              child: Text('Cancel·lar'),
                              padding: EdgeInsets.all(10.0),
                            ),
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14.0),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                //Expanded(flex:0,child: ContainerBotons(),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}