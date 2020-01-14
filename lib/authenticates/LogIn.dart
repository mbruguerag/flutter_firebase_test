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
  String email = '';
  String password = '';

  final AuthService _auth = AuthService();
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
      body: Center(
        child: Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // centrem la imatge
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Image.asset('assets/usuario.jpg', scale: 4.0),
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
                        height: 50.0,
                        child: TextFormField(
                          onChanged: (val) {
                            setState(() => email = val);
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
                        height: 50.0,
                        child: TextFormField(
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
                          height: 20,
                          width: 80,
                        ),
                        RaisedButton(
                          color: Colors.blue,
                          onPressed: () async {
                            dynamic result = await _auth.signInAnon();
                            if (result == null) {
                              print("Error d'identificació");
                            } else {
                              print('Identificació correcta');
                              print(password);
                            }
                          },
                          textColor: Colors.white,
                          child: Container(
                            child: Text('Entrar'),
                            padding: EdgeInsets.all(10.0),
                          ),
                        ),
                        RaisedButton(
                          color: Colors.blue,
                          onPressed: () {
                            //  Navigator.pushNamed(context, '/register');
                            widget.toggleView();
                          },
                          textColor: Colors.white,
                          child: Container(
                            child: Text('Crear un usuari'),
                            padding: EdgeInsets.all(10.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}