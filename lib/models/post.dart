class Post {
  final int id;
  final String name;
  final String date;
  final String contentText;

  Post({this.id,this.name,this.date,this.contentText});

  @override 
  String toString(){
    return 'Post: {id: $id, userName: $name, data: $date, texto: $contentText}';
  }
}