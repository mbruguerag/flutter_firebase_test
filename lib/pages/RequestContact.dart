import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RequestContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 59),
          child: Image.asset(
            'assets/monefylogo.jpg',
            scale: 1.5,
          ),
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
              Expanded(flex: 0, child: ContainerRequestContact()),
              Expanded(flex: 0, child: ContainerInfoRequest()),
              Expanded(
                flex: 0,
                child: ContainerBotons(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerRequestContact extends StatelessWidget {
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
                'Sol·licitar',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                    Text(
                      '          Lucia Fernandez',
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

class ContainerInfoRequest extends StatefulWidget {
  @override
  _ContainerInfoRequestState createState() => _ContainerInfoRequestState();
}

class _ContainerInfoRequestState extends State<ContainerInfoRequest> {
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
            'Concepte',
            style: TextStyle(
              fontSize: 15,
            ),
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
                labelText: 'Concepte',
                fillColor: Colors.black87,
              ),
            ),
          ),
        ),
        Container(
          width: 180,
          padding: EdgeInsets.all(14),
          child: Text(
            'Import',
            style: TextStyle(
              fontSize: 15,
            ),
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
                labelText: 'Import',
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
          children: <Widget>[
            SizedBox(
              height: 20,
              width: 80,
            ),
            RaisedButton(
              color: Colors.green,
              onPressed: () {},
              textColor: Colors.white,
              child: Container(
                child: Text('Enviar'),
                padding: EdgeInsets.all(10.0),
              ),
            ),
          ],
        ),

        //columna cancel
        Column(
          children: <Widget>[
            SizedBox(
              height: 20,
              width: 80,
            ),
            Container(
              child: RaisedButton(
                color: Colors.red,
                onPressed: () {
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