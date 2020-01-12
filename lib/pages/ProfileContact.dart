import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase/pages/appbars/appbarprofile.dart';
import 'package:firebase/pages/bodies/bodyprofile.dart';
class ProfileContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerprofile(),
      body: BodyProfile(),
    );
  }
}
