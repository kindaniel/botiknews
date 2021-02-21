class Post {
  final int id;
  final String name;
  final String date;
  final String contentText;
  final int userId;

  Post({this.id, this.name, this.date, this.contentText, this.userId})
      : assert(contentText != null);

  @override
  String toString() {
    return 'Post: {id: $id, userName: $name, data: $date, texto: $contentText, userId: $userId}';
  }
}
