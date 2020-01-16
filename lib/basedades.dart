import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/logins.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //base de dades

  final CollectionReference LoginsCollection =
      Firestore.instance.collection('Logins');

  Future updateUserData(
      double saldo, String mail, String username, String password) async {
    return await LoginsCollection.document(uid).setData({
      'saldo': saldo,
      'mail': mail,
      'username': username,
      'password': password,
    });
  }

  // get Logins collection
  Stream<QuerySnapshot> get Logins {
    return LoginsCollection.snapshots();  
  }
}
