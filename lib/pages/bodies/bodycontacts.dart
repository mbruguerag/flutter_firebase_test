import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase/logins.dart';
import 'package:firebase/basedades.dart';
import 'package:provider/provider.dart';




class BodyContacts extends StatefulWidget {
  @override
  _BodyContactsState createState() => _BodyContactsState();
}

class _BodyContactsState extends State<BodyContacts> {
    //TextEditingController _controller;
   //@override
  //void initState() {
    //_controller = TextEditingController();
    //super.initState();


  @override
  Widget build(BuildContext context) {
        final db = Firestore.instance;
  
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // centrem la imatge 
        children: <Widget>[
    /*Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: 'Search Contacts...'
          ),
        ),
      ),
    ),
        
        Container(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('Contacts',
      style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      ),
    ),
        ),
        ),
      final logins = Provider.of<List<Logins>>(context);
       logins.forEach((logins){
       print(logins.dni);
       print(logins.username);
       print(logins.mail);
       print(logins.saldo);
     });
        ListView()
        */
    Expanded(flex:1, child: ContainerSearch()),
    Expanded(flex: 0, child: ContainerContacts()),
    Expanded(flex:7, child: BodySearchContacts()),
    Expanded(flex:2, child: ContainerBotons()),

        ],
        );
  }
}
class BodySearchContacts extends StatefulWidget {
  @override
  _BodySearchContactsState createState() =>  _BodySearchContactsState();
} 


class _BodySearchContactsState extends State<BodySearchContacts> {

 TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

 @override
  Widget build(BuildContext context)  {
    final logins = Provider.of<List<Logins>>(context);
     logins.forEach((logins){
       print(logins.saldo);
       print(logins.username);
       print(logins.mail);
       print(logins.password);
     });
    
 
    return ListView.builder(

       itemCount: logins.length,
      itemBuilder: (context,i)=> new Column(
      
        children: <Widget>[
          Card(
          color: Colors.white60,
            child: ListTile(
              leading: IconButton(
                icon: Icon(Icons.chevron_left),
                tooltip: 'Request',
                onPressed:(){
                  Navigator.pushNamed(context, '/request');
                },                 
                ),
                title: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/usuario.jpg'),
                    ),
                    
                    Text('carla',//${logins.dni},
                      textAlign: TextAlign.center,
                      
                    ),
                  ],
                ),
                trailing: IconButton(
                  icon: Icon(Icons.chevron_right),
                  tooltip:"Pay",
                  onPressed: (){
                   Navigator.pushNamed(context, '/pay');

                  },
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
   TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    
      child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: _controller,
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

class ContainerBotons extends StatefulWidget {
  @override
  _ContainerBotonsState createState() => _ContainerBotonsState();
}

class _ContainerBotonsState extends State<ContainerBotons> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[              
              SizedBox(height: 20,width: 80,),
              RaisedButton(
                color: Colors.green,
                onPressed: (){
                  Navigator.pushNamed(context, '/add');

                },
                textColor: Colors.white,
                  child: Container(
                    child: Text('Afegir Contacte'),
                    padding: EdgeInsets.all(10.0),
                 ),      
              ),
            ],
          
        );
    }      
  }




/*
class BodyContacts extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   final Contact contact= ModalRoute.of(context).settings.arguments; 
   return Scaffold(
     appBar: AppBar(title: Text(contact.nom)),
     body: StreamBuilder(
       stream: db.getContacts(),
       builder: (context, AsyncSnapshot<List<Contact>> snapshot){
         if (snapshot.hasError){
           return Center(
             child: Text(
               snapshot.error.toString(),
               style: TextStyle(
                 backgroundColor: Colors.red,
               )
             ) ,);
         }
         if (!snapshot.hasData){
           return Center(child: CircularProgressIndicator(),
           );
         }
         List<Contact> contacts = snapshot.data;
         return ListView.builder(
           itemCount: contacts.length,
           itemBuilder: (context,index){
              return ContactTile(contacts[index]);
           }
         );
       },
     ),
   );
  }
  
}
class ContactTile extends StatelessWidget{
  final Contact contact;
  const ContactTile(this.contact);
  @override
  Widget build(BuildContext context){
    return ListTile(
    leading: Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
      ),
    ),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(contact.nom),
       
      ],
    )
    );
  }
}*/