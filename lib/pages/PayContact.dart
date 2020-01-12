import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase/pages/appbars/appbarpaycontact.dart';
import 'package:firebase/pages/bodies/bodypaycontact.dart';

class PayContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerpaycontacts(),
      body: BodyPayContacts(),
      
    );
  }
}
