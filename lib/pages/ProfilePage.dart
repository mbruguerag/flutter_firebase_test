import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0), // here the desired height
        child: AppBar(
          elevation: 0.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // centrem la imatge user
        children: <Widget>[
          Expanded(flex: 4, child: Containerperfil()),
          Expanded(flex: 5, child: Containerop()),
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people, color: Colors.black54),
            title: Text('Contacts', style: TextStyle(color: Colors.black54),),
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            title: Text('Events'),
          ),
        ],
      ),
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
      // VERD
      color: Colors.white,
      //height: 250,
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            //imatge usuari
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'nom user',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            // VERMELL
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.purple[200],
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
    );
  }
}

class Containerop extends StatefulWidget {
  @override
  _ContaineropState createState() => _ContaineropState();
}

class _ContaineropState extends State<Containerop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      //OPERACIONES
    );
  }
}
