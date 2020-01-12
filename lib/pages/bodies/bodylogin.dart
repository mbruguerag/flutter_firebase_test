import 'package:flutter/material.dart';

class BodyLogIn extends StatefulWidget {
  @override
  _BodyLogInState createState() => _BodyLogInState();
}

class _BodyLogInState extends State<BodyLogIn> {
  
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
        Expanded(flex:0, child: ContainerLogIn()),
        Expanded(flex:0,child: ContainerBotoLogIn(),)
          ],
        ),
      ),
    );
  }
}

class ContainerLogIn extends StatefulWidget {
  @override
  _ContainerLogInState createState() => _ContainerLogInState();
}

class _ContainerLogInState extends State<ContainerLogIn>{
  
  @override

Widget build(BuildContext context) {
  
  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 30),
          child: Image.asset('assets/usuario.jpg', scale:4.0),
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

class ContainerBotoLogIn extends StatefulWidget {
  @override
  _ContainerBotoLogInState createState() => _ContainerBotoLogInState();
}

class _ContainerBotoLogInState extends State<ContainerBotoLogIn> {
  @override
  Widget build(BuildContext context) {
    
        
          //columna Add
         return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
            children:<Widget>[
              
              SizedBox(height: 20,width: 80,),
              RaisedButton(
                color: Colors.grey,
                onPressed: (){
                  Navigator.pushNamed(context, '/inicio');
                },
                textColor: Colors.white,
                  child: Container(
                    child: Text('LogIn'),
                    padding: EdgeInsets.all(10.0),
                 ),      
              ),
            ],
          
        );   
  }
}