import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/contactdata.dart';
import 'package:flutter/rendering.dart';

class BodyEvents extends StatefulWidget {
  @override
  _BodyEventsState createState() => _BodyEventsState();
}

class _BodyEventsState extends State<BodyEvents> {
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Center(
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
          Expanded(flex:0, child: ContainerEvent()),
          Expanded(flex:0, child: ContainerInfoEvent()),
          Expanded(flex:1, child: ContainerMiembros()),
          Expanded(flex:1, child: ContainerSearchMiembros()),
          Expanded(flex:3, child: SearchMembers()),
          Expanded(flex:0,child: ContainerBotons(),)
            ],
          ),
        ),
      ),
    );
  }
}


class ContainerEvent extends StatefulWidget {
  @override
  _ContainerEventState createState() => _ContainerEventState();
}

class _ContainerEventState extends State<ContainerEvent> {
  @override
  Widget build(BuildContext context) {

    return Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Events',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ) ,),
            ),
          ],
        );
    }
}


class ContainerInfoEvent extends StatefulWidget {
  @override
  _ContainerInfoEventState createState() => _ContainerInfoEventState();
}

class _ContainerInfoEventState extends State<ContainerInfoEvent> {
  
  
  final TextEditingController descripcioCtrl = TextEditingController();
  final TextEditingController dinersCtrl = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      //columna Descripcio
      
      Column(
        children: <Widget>[

          Container(
            width: 180,
            padding: EdgeInsets.all(14),
            child: Text(
              'Descripció',
              style: TextStyle(
              fontSize: 15,
            ) ,
          ),
        ),

          Container(
            width: 200,
            padding: EdgeInsets.all(5),
            child: SizedBox(
                  height: 50.0,
                  child: TextFormField(
                  //obscureText: true,
                  cursorColor: Colors.black87,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'event...',
                    fillColor: Colors.black87,
                    ),
                  ),
                ),
        ),

      ],
    ),
        
     //columna quantitat 
      Column(
        children: <Widget>[

          Container(
            width: 120,
                padding: EdgeInsets.all(14),
                child: Text(
                    'Import',
                     style: TextStyle(
                     fontSize: 15 ),
                    ),
            ),

            Container(
              width: 120,
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 50.0,
                  child: TextFormField(
                  //obscureText: true,
                  cursorColor: Colors.black87,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '€',
                    fillColor: Colors.black87,
                    ),
                  ),
                ),
            ),
            
        ],
      ),
            
    ],
      );
  }
}

class ContainerMiembros extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 14.0, bottom: 5.0),
            child: Text(
              'Membres',
              style: TextStyle(
                fontSize: 20,
                ) ,
              ),
            ),
          ],
        );
  }
}

class ContainerSearchMiembros extends StatefulWidget {
  @override
  _ContainerSearchMiembrosState createState() => _ContainerSearchMiembrosState();
}

class _ContainerSearchMiembrosState extends State<ContainerSearchMiembros> {
  @override
  Widget build(BuildContext context) {
    return Container(  
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Buscar ...'
      ),
    ),
  );

  }
}

class SearchMembers extends StatefulWidget {
  @override
  _SearchMembersState createState() =>  _SearchMembersState();
} 


class _SearchMembersState extends State<SearchMembers> {

 @override
  Widget build(BuildContext context)  {
    
    return ListView.builder(
      
      itemCount: contactes.length,
      itemBuilder: (context,i)=> new Column(
      
        children: <Widget>[
          Card(
          color: Colors.white60,
            child: ListTile(
                
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
              ),
             ),

             Card(
            color: Colors.white60,
            child: ListTile(
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
              ),
             ),

             Card(
            color: Colors.white60,
            child: ListTile(
                title: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      backgroundImage: AssetImage('assets/usuario.jpg'),
                    ),
                    Text('          Paula Rodriguez',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
             ),
           
            ],
            ) ,

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
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          
          //columna Add
          Column(
            
            children:<Widget>[
              
              SizedBox(height: 20,width: 80,),
              RaisedButton(
                color: Colors.green,
                onPressed: (){},
                textColor: Colors.white,
                  child: Container(
                    child: Text('Acceptar'),
                    padding: EdgeInsets.all(10.0),
                 ),      
              ),
            ],
          
        ),
      
         //columna cancel 
          Column(
            children: <Widget>[

                SizedBox(height: 20,width: 80,),
                Container(
                  child: RaisedButton(
                    color: Colors.red,
                    onPressed: (){},
                    textColor: Colors.white,
                    child: Container(
                      child: Text('Cancel·lar'),
                      padding: EdgeInsets.all(10.0),
                    ),      
                  ),
                ),
              ],
            ),
                
        ],
    );
  }
}