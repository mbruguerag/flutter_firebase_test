
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});
  //base de dades

  final CollectionReference loginsCollection = Firestore.instance.collection('logins');

  Future updateUserData(String dni, String mail, String password, String username, int saldo) async{
    return await loginsCollection.document(uid).setData({
      'dni': dni,
      'mail':mail,
      'password':password,
      'username': username,
      'saldo' : saldo,

      
    });
  }

  //streams
  Stream<QuerySnapshot> get logins {
    return loginsCollection.snapshots();

  }
}
/*
//retorna stream de list contact
Stream<List<Contact>> getContacts(){
return Firestore.instance.collection('contactes').snapshots().map(toContactList);
}*/


