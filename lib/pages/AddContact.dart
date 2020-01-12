import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase/pages/appbars/appbaraddcontacs.dart';
import 'package:firebase/pages/bodies/bodyaddcontacts.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headeraddcontacts(),
      body: BodyAddContacts(),
      
    );
  }
}

