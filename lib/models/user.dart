class User {
  final String uid;
  User({this.uid});
}

class UserData {
  final String uid;
  final double saldo;
  final String mail;
  final String username;
  final String password;
  final List<String> contactes;
  final List<String> moviments;

  UserData(
      {this.uid,
      this.saldo,
      this.mail,
      this.username,
      this.password,
      this.contactes,
      this.moviments});
}
