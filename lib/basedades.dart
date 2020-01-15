
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/logins.dart';

class DatabaseService{

  final String uid;
  DatabaseService({this.uid});
  //base de dades

  final CollectionReference LoginsCollection = Firestore.instance.collection('Logins');

  Future updateUserData(String dni, String mail, String username, int saldo) async{
    return await LoginsCollection.document(uid).setData({
      'dni': dni,
      'mail':mail,
      'username': username,
      'saldo' : saldo,

      
    });
  }
  
  //User list d'snapshot
List<Logins> _loginsListFromSnapshot(QuerySnapshot snapshot){
  return snapshot.documents.map((doc){
    return Logins(
      dni: doc.data['dni'] ?? '',
      mail: doc.data['mail'] ?? '',
      username: doc.data['username'] ?? '',
      saldo: doc.data['saldo'] ?? 0 ,

    );
  }).toList();
} 
 
  

//streams  
  Stream<List<Logins>> get logins {
    return LoginsCollection.snapshots()
    .map(_loginsListFromSnapshot); 


  }
}
/*
//retorna stream de list contact
Stream<List<Contact>> getContacts(){
return Firestore.instance.collection('contactes').snapshots().map(toContactList);
}*/


