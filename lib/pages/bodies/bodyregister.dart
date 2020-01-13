import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BodyRegister extends StatefulWidget{

  @override
  _BodyRegister createState() => _BodyRegister();
}

class _BodyRegister extends State<BodyRegister>{
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
        Expanded(flex:0, child: ContainerRegisterContact()),
        Expanded(flex:0,child:ContainerBotoRegister()),
        //Expanded(flex:0,child: ContainerBotons(),)
          ],
        ),
      ),
    );
  }

}

class ContainerRegisterContact extends StatefulWidget{
   @override
  _ContainerRegisterContact createState() => _ContainerRegisterContact();}
  
  class _ContainerRegisterContact extends State<ContainerRegisterContact>{
  @override

Widget build(BuildContext context) {
  
  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  
    return Column(
      children: <Widget>[
        Container(
          child: Text('Register',
          style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ) ,
          ),
        ),

        Container(
          padding: EdgeInsets.only(bottom: 30),
          child: Image.asset('assets/usuario.jpg', scale:4.0),
        ),
         Container(
                width: 180,
                padding: EdgeInsets.all(14),
                child: Text(
                  'DNI',
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
                        labelText: 'DNI',
                        fillColor: Colors.black87,
                        ),
                      ),
                    ),
            ),

            Container(
                width: 180,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Username',
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
                        labelText: 'Username',
                        fillColor: Colors.black87,
                        ),
                      ),
                    ),
            ),

            Container(
                width: 180,
                padding: EdgeInsets.all(14),
                child: Text(
                  'Password',
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
                      obscureText: true,
                      cursorColor: Colors.black87,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        fillColor: Colors.black87,
                        ),
                      ),
                    ),
            ),

          ],
        );
      }
}

class ContainerBotoRegister extends StatefulWidget {
  @override
  _ContainerBotoRegisterState createState() => _ContainerBotoRegisterState();
}

class _ContainerBotoRegisterState extends State<ContainerBotoRegister> {
  @override
  Widget build(BuildContext context) {
    
        
          //columna Login
         return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
            children:<Widget>[
              
              SizedBox(height: 20,width: 80,),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                  Navigator.pushNamed(context, '/login');
                },
                textColor: Colors.white,
                  child: Container(
                    child: Text('Register'),
                    padding: EdgeInsets.all(10.0),
                 ),      
              ),
            ],
          
        );   
  }
}

/*class BodyRequestContacts extends StatefulWidget {
  @override
  _BodyRequestContactsState createState() => _BodyRequestContactsState();
}

class _BodyRequestContactsState extends State<BodyRequestContacts> {
  
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
        Expanded(flex:0, child: ContainerRegisterContact()),
        Expanded(flex:0,child:ContainerInfoRequest()),
        Expanded(flex:0,child: ContainerBotons(),)
          ],
        ),
      ),
    );
  }
}

class ContainerRegisterContact extends StatefulWidget{

  @override
  _ContainerRegisterContact createState() => _ContainerRegisterContact();
}

class _ContainerRegisterContact extends State<ContainerRegisterContact>{
  @override
  Widget build(BuildContext context) {

  }
}
*/