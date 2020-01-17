import 'package:cloud_firestore/cloud_firestore.dart';

class Login{

  final double saldo;
  final String mail;
  final String username;
  final String password;
  final List<String> contactes;
  final List<String> moviments;
  Login({this.saldo,this.mail,this.username,this.password, this.contactes, this.moviments});


}

