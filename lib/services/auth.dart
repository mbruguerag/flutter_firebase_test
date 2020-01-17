import 'package:firebase/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase/basedades.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create user obj based on firebaseuser
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign in with email & password
  Future signInWithEmailAndPassword(String mail, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: mail, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

//register with email & password
  Future registerWithEmailAndPassword(
      double saldo,
      String mail,
      String username,
      String password,
      List<String> contactes,
      List<String> moviments) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: mail, password: password);
      FirebaseUser user = result.user;

      await DatabaseService(uid: user.uid).updateUserData(saldo, mail, username,
          password, contactes, moviments);
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
