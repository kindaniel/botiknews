import 'package:botiknews/database/app_database.dart';
import 'package:botiknews/models/post.dart';
import 'package:sqflite/sqflite.dart';

class PostRepository {

  static const _tableName = 'posts';
  Future<int> sendPost(text) async {
    final oneNew = Post(
        id: 0,
        name: 'Daniel',
        contentText: text,
        date: DateTime.now().toString());
    return await save(oneNew);
  }

  Future<int> save(Post post) async {
    final Database db = await getDatabase();
    final Map<String, dynamic> postMap = Map();
    postMap['name'] = post.name;
    postMap['date'] = post.date;
    postMap['content_text'] = post.contentText;
    return db.insert(_tableName, postMap);
  }

  Future<List<Post>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    final List<Post> posts = List();
    for (Map<String, dynamic> row in result) {
      final Post post = Post(
        id: row['id'],
        name: row['name'],
        date: row['date'],
        contentText: row['content_text'],
      );
      posts.add(post);
    }
    return posts;
  }
}
