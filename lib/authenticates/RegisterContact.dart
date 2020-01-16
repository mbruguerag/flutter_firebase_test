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
  double saldo = 0; 
  String mail = '';
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
                    flex: 2,
                    child: Container(
                      child: Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: Image.asset('assets/usuario.jpg', scale: 0.5),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Saldo',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                       keyboardType: TextInputType.number,
                      validator: (val) => val.isEmpty ? "Entri saldo" : null,
                      onChanged: (val) {

                        setState(() => saldo = double.parse(val));
                      
                      },
                       cursorColor: Colors.black87,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Saldo',
                        fillColor: Colors.black87,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'E-mail',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      validator: (val) => val.isEmpty ? "Entri l'E-mail" : null,
                      onChanged: (val) {
                        setState(() => mail = val);
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Nom',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      validator: (val) => val.isEmpty ? 'Introduïr nom' : null,
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
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        'Contrassenya',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
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
                  Expanded(
                    flex: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 5,
                          child: SizedBox(
                            height: 15,
                            width: 80,
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                dynamic result =
                                    await _auth.registerWithEmailAndPassword(
                                        saldo, mail, username, password);
                                    
                                if (result == null) {
                                  setState(() => error = 'Credencials incorrectes');
                                }
                              }
                            },
                            textColor: Colors.white,
                            child: Container(
                              child: Text('Registrar-se'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(),
                        ),
                        Expanded(
                          flex: 8,
                          child: RaisedButton(
                            color: Colors.blue,
                            onPressed: () {
                              widget.toggleView();
                            },
                            textColor: Colors.white,
                            child: Container(
                              child: Text('Cancel·lar'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(),
                        ),
                        Expanded(
                            flex: 5,
                            child: Text(
                              error,
                              style: TextStyle(color: Colors.red, fontSize: 14.0),
                            )),
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
