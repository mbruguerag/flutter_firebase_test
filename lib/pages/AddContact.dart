import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(left:59),
            child: Image.asset('assets/monefylogo.jpg', scale: 1.5,),
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
        Expanded(flex:0, child: ContainerNewContact()),
        Expanded(flex:0, child: ContainerInfoContact()),
        Expanded(flex:0,child: ContainerBotons(),)
          ],
        ),
      ),
    ),
      
    );
  }
}



class ContainerNewContact extends StatefulWidget {
  @override
  _ContainerNewContactState createState() => _ContainerNewContactState();
}

class _ContainerNewContactState extends State<ContainerNewContact> {
  @override
  Widget build(BuildContext context) {

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Nou contacte',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ) ,),
            ),
          ],
        );
    }
}

class ContainerInfoContact extends StatefulWidget{

  @override
  _ContainerInfoContactState createState() => _ContainerInfoContactState();

}

class _ContainerInfoContactState extends State<ContainerInfoContact>{

@override

Widget build(BuildContext context) {
  
  final TextEditingController nomCtrl = TextEditingController();
  final TextEditingController cognomCtrl = TextEditingController();
  
    return Column(
      children: <Widget>[
         Container(
                width: 180,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Nom',
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
                        labelText: 'Nom',
                        fillColor: Colors.black87,
                        ),
                      ),
                    ),
            ),

            Container(
                width: 180,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Cognom',
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
                        labelText: 'Cognom',
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
                    onPressed: (){
                      Navigator.pop(context);
                    },
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