class User {
  final int id;
  final String name;

  User({this.id,this.name});

  @override 
  String toString(){
    return 'Post: {id: $id, userName: $name}';
  }
}