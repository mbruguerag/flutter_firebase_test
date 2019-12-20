import 'package:flutter/material.dart';
//import 'package:Monefy/ProfilePage.dart';

//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


  @override
  Widget build(BuildContext context) {
    final divider = Container(
      height: 20,
      color: Colors.transparent,
    );
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
                  child: Text(
            'Monefy',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // centrem la imatge user
        children: <Widget>[
          Container(
            height: 200,
            padding: EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/usuario.jpg')
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                ),
              ),
              Text('nom user',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  ),

              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('diners €',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,                           
                          ),
                        ),
                      ],
                    )
                  ],
                ),

              )
            ],
          ),
          )
        ],
      ),
    );
  }
}