import 'package:cloud_firestore/cloud_firestore.dart';

class Logins{

  final double saldo;
  final String mail;
  final String username;
  final String password;
  final List<String> contactes;
  final List<String> moviments;
  Logins({this.saldo,this.mail,this.username,this.password, this.contactes, this.moviments});


}

class Moviments{

}