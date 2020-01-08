import 'package:firebase/contactdata.dart';
import 'package:flutter/material.dart';

class BodyAddContacts extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    return Column(

    );
  }
}
/*
class _BodyAddContactsState extends State<BodyAddContacts> {
  final Contact contactes;

  @override
  Widget build(BuildContext context) {
    final Contact contactes = ModalRoute.of(context).settings.arguments;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch, // centrem la imatge 
      children: <Widget>[
        Expanded(flex:1, child: ContainerSearch()),
        Expanded(flex: 0, child: ContainerContacts()),
        Expanded(flex:7, child: BodySearchContacts()),
      ],
    );
  }
}*/