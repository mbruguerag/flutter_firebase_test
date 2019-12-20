import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        
        child: AppBar(
          backgroundColor: Colors.white,

          leading: IconButton( //posar icon a l'esquerra
            onPressed: (){},
            icon: Icon(Icons.add),
            color: Colors.black,
          ) ,

          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.delete),
              color: Colors.black,
            ),
          ],

          title: Image.asset('assets/monefylogo.jpg', fit:BoxFit.cover),
          ),
          
        ),

      
    );
    
  }
}

/*class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    

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

*/
