import 'package:firebase/contactdata.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class BodyPayContacts extends StatefulWidget {
  @override
  _BodyPayContactsState createState() => _BodyPayContactsState();
}

class _BodyPayContactsState extends State<BodyPayContacts> {
  
  @override
  Widget build(BuildContext context) {
    return Center(
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
        Expanded(flex:0, child: ContainerPayContact()),
        Expanded(flex:0,child:ContainerInfoPay()),
        Expanded(flex:0,child: ContainerBotons(),)
          ],
        ),
      ),
    );
  }
}


class ContainerPayContact extends StatelessWidget{

@override

Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[

        //PAY COLUMN
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Pay',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ) ,),
            ),
          ],
        ),

        //NOM COLUMN

        Column(
          children: <Widget>[
             Card(
          color: Colors.white,
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
          ], 
          
        ),

      ],
    );
  }

}

class ContainerInfoPay extends StatefulWidget {
  @override
  _ContainerInfoPayState createState() => _ContainerInfoPayState();
}

class _ContainerInfoPayState extends State<ContainerInfoPay>{
  
  @override

Widget build(BuildContext context) {
  
  final TextEditingController asuntoCtrl = TextEditingController();
  final TextEditingController cantidadCtrl = TextEditingController();
  
    return Column(
      children: <Widget>[
         Container(
                width: 180,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Concept',
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
                        labelText: 'Concept',
                        fillColor: Colors.black87,
                        ),
                      ),
                    ),
            ),

            Container(
                width: 180,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Money',
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
                        labelText: 'Money',
                        fillColor: Colors.black87,
                        ),
                      ),
                    ),
            ),

          ],
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
                    child: Text('Send'),
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
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    textColor: Colors.white,
                    child: Container(
                      child: Text('Cancel'),
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