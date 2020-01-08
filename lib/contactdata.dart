import 'package:cloud_firestore/cloud_firestore.dart';

class Contact{
  final String nom;

  const Contact({this.nom});
}

const contactes = const <Contact>[
  const Contact(
    nom: "Thalia Diaz"
  ),

  const Contact(
    nom: "Lucia Fernandez"
  )
];

/*
class Contact{
  String id;
  String nom;

  Contact.fromFirestore(DocumentSnapshot doc)
  : id= doc.documentID,
    nom= doc.data['nom'];
}
List<Contact> toContactList(QuerySnapshot query){
  return query.documents.map((doc) => Contact.fromFirestore(doc));
}
*/