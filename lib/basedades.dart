import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/login.dart';
import 'package:firebase/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  //base de dades

  final CollectionReference LoginCollection =
      Firestore.instance.collection('Logins');

  Future updateUserData(double saldo, String mail, String username,
      String password, List<String> contactes, List<String> moviments) async {
    return await LoginCollection.document(uid).setData({
      'saldo': saldo,
      'mail': mail,
      'username': username,
      'password': password,
      'contactes': contactes,
      'moviments': moviments,
    });
  }

  // llista login from snapshot
  List<Login> _loginListfromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Login(
        saldo: doc.data['saldo'] ?? 0.0,
        mail: doc.data['mail'] ?? '',
        username: doc.data['username'] ?? '',
        password: doc.data['password'] ?? '',
        contactes: doc.data['contactes'] ?? [],
        moviments: doc.data['moviments'] ?? [],
      );
    }).toList();
  }

//userData from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
      uid: uid,
      saldo: snapshot.data['saldo'],
      mail: snapshot.data['mail'],
      username: snapshot.data['username'],
      password: snapshot.data['password'],
      contactes: snapshot.data['contactes'],
      moviments: snapshot.data['moviments'],
    );
  }

//Login list from snapshots
  Stream<List<Login>> get Logins {
    return LoginCollection.snapshots().map(_loginListfromSnapshot);
  }

  // get logins doc stream
  Stream<UserData> get userData {
    return LoginCollection.document(uid).snapshots().map(_userDataFromSnapshot);
  }
}
