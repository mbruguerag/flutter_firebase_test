import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase/pages/appbars/appbarrequestcontact.dart';
import 'package:firebase/pages/bodies/bodyrequestcontact.dart';
class RequestContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerrequestcontact(),
      body: BodyRequestContacts(),
    );
  }
}

//PROBA PER VEURE SI FA PUSHHHhhh