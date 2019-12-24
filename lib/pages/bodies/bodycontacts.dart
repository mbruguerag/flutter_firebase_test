import 'package:flutter/material.dart';
import 'package:firebase/contactdata.dart';
import 'package:flutter/rendering.dart';


class BodyContacts extends StatefulWidget {
  @override
  _BodyContactsState createState() => _BodyContactsState();
}

class _BodyContactsState extends State<BodyContacts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, // centrem la imatge 
      children: <Widget>[
        Expanded(flex:1, child: ContainerSearch()),
        Expanded(flex: 0, child: ContainerContacts()),
        Expanded(flex:7, child: BodySearchContacts()),
      ],
    );
  }
}
class BodySearchContacts extends StatefulWidget {
  @override
  _BodySearchContactsState createState() =>  _BodySearchContactsState();
} 


class _BodySearchContactsState extends State<BodySearchContacts> {

 @override
  Widget build(BuildContext context)  {

    return ListView.builder(
      itemCount: contactes.length,
      itemBuilder: (context,i)=> new Column(

        children: <Widget>[
          Card(
          color: Colors.white60,
            child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.chevron_left),
                tooltip: 'Request',
                                  
                ),
                
                title: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/usuario.jpg'),
                    ),
                    
                    Text('          Lucia Fernandez',
                      textAlign: TextAlign.center,
                      
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  tooltip:"Pay",
                ),
              ),
             ),

             Card(
            color: Colors.white60,
            child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.chevron_left),
                tooltip: 'Request',),
                title: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/usuario.jpg'),
                    ),
                    Text('          Carles Sospedra',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  tooltip:'Pay',
                ),
              ),
             ),

            Card(
              
            color: Colors.white60,
            child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.chevron_left),

                tooltip: 'Request',
                ),
                title: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/usuario.jpg'),
                    ),
                    Text('          Sandra Gomez',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  tooltip: 'Pay',
                ),
              ),
             ),
            ],
            ) ,

          );
        
  }
}

class ContainerSearch extends StatefulWidget {
  @override
  _ContainerSearchState createState() => _ContainerSearchState();
}

class _ContainerSearchState extends State<ContainerSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search Contacts...'
      ),
    ),
  ),
  
  );

  }
}

class ContainerContacts extends StatefulWidget {
  @override
  _ContainerContactsState createState() => _ContainerContactsState();
}

class _ContainerContactsState extends State<ContainerContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
  
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('Contacts',
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    ),),
  ),
  
  );

  }
}

