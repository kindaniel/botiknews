class User {
  final int id;
  final String email;
  final String name;
  final String password;

  User({this.id, this.email, this.name, this.password});

  @override
  String toString() {
    return 'Post: {id: $id, name: $name, userEmail: $email}';
  }
}
