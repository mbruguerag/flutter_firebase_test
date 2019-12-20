import 'package:flutter/material.dart';


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
          Expanded(flex:4,
            child: Containerperfil()),
          Expanded(flex:6,
            child: Containerop()),
          Expanded(child: Barrainferior()),
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
            color: Colors.green,
            //height: 250,
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
                  color: Colors.red[200],
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
    return Container(color:Colors.yellow,
            //OPERACIONES
            
          );
  }
}



class Barrainferior extends StatefulWidget {
  @override
  _BarrainferiorState createState() => _BarrainferiorState();
}

class _BarrainferiorState extends State<Barrainferior> {
  @override
  Widget build(BuildContext context) {
    return Container(
            color: Colors.black26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.people),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/contactes');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.person),
                 // onPressed: ()// {
                  //  Navigator.of(context).pushNamed('/perfil');
                 // },
                ),
                IconButton(
                  icon: Icon(Icons.payment),
                 // onPressed: () //{
                   // Navigator.of(context).pushNamed('/events');
                  //},
                ),
              ],
            ),
          );
  }
}