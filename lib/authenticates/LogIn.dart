import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase/services/auth.dart';

class LogIn extends StatefulWidget {
  final Function toggleView;
  LogIn({this.toggleView});

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  //double saldo = 0 ;
  String mail = '';
  //String username = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameCtrl = TextEditingController();
    final TextEditingController passwordCtrl = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset('assets/monefylogo.jpg', scale: 1.5),
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Center(
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Container(
                      child: Image.asset('assets/usuario.jpg', scale: 3.0),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        'E-mail',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      width: 180,
                      child: SizedBox(
                        height: 50.0,
                        child: TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Entri el seu correu' : null,
                          onChanged: (val) {
                            setState(() => mail = val);
                          },
                          cursorColor: Colors.black87,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'E-mail',
                            fillColor: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        'Contrassenya',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      child: SizedBox(
                        height: 50.0,
                        child: TextFormField(
                          validator: (val) =>
                              val.length < 6 ? 'Mínim 6 caracters' : null,
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
                  ),
                  Expanded(
                    flex: 9,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 7,
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                dynamic result =
                                    await _auth.signInWithEmailAndPassword(
                                         mail, password);
                                if (result == null) {
                                  setState(
                                      () => error = "Error d'autenticació");
                                }
                              }
                            },
                            textColor: Colors.white,
                            child: Container(
                              child: Text('Entrar'),
                              padding: EdgeInsets.all(10.0),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                              child: Text(
                            error,
                            style: TextStyle(color: Colors.red, fontSize: 14.0),
                          )),
                        ),
                        Expanded(
                          flex: 7,
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () {
                              widget.toggleView();
                            },
                            textColor: Colors.white,
                            child: Container(
                              child: Text('Crear un usuari'),
                              padding: EdgeInsets.all(10.0),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
