import 'package:flutter/material.dart';
//import 'package:Monefy/ProfilePage.dart';

//BUENA
void main() => runApp(Monefy());

class Monefy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/perfil': (context) => ProfilePage(),
        '/contactes': (context) => ContactPage(),
      },
      initialRoute: '/perfil',
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
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
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // centrem la imatge user
        children: <Widget>[
          Container(
            // VERD
            color: Colors.green,
            height: 250,
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
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
                Text(
                  'nom user',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Container(
                  // VERMELL
                  padding: EdgeInsets.symmetric(vertical: 10),
                  color: Colors.red[300],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            '300 €',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          divider,
          Container(
            //OP (BLAU)
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text('Operaciones'),
                    Container(),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('Pendientes'),
                    Container(height: 100, color: Colors.yellow),
                  ],
                ),
              ],
            ),
          ),
          divider,
          Container(
            color: Colors.black38,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.people),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/contactes');
                      },
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.person),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.payment),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
