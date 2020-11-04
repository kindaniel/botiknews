import 'package:botiknews/database/app_database.dart';
import 'package:botiknews/models/post.dart';
import 'package:botiknews/repositories/posts/postRepository.dart';
import 'package:botiknews/settings.dart';
import 'package:sqflite/sqflite.dart';

class PostRepositoryImpl implements PostRepository {
  static const _tableName = 'posts';

  Future<int> sendPost(text) async {
    final oneNew = Post(
        id: 0,
        contentText: text,
        userId: Settings.userId,
        date: DateTime.now().toString());
    return await save(oneNew);
  }

  Future<int> save(Post post) async {
    final Database db = await getDatabase();
    final Map<String, dynamic> postMap = Map();
    postMap['date'] = post.date;
    postMap['content_text'] = post.contentText;
    postMap['user_id'] = post.userId;
    return db.insert(_tableName, postMap);
  }

  Future<int> delete(Post post) async {
    final Database db = await getDatabase();
    final result = await db.rawDelete(
        'DELETE FROM posts WHERE content_text = ?', [post.contentText]);
    return result;
  }

  Future<int> editPost(Post post, newText) async {
    final Database db = await getDatabase();
    final result = await db.rawUpdate(
        'update posts set content_text = ? where date = ?', [newText, post.date]);
    return result;
  }

  Future<List<Post>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.rawQuery(
        'SELECT * FROM posts left join users on posts.user_id = users.id order by posts.date desc');
    final List<Post> posts = List();
    for (Map<String, dynamic> row in result) {
      final Post post = Post(
        id: row['id'],
        date: row['date'],
        contentText: row['content_text'],
        userId: row['user_id'],
        name: row['name'],
      );
      posts.add(post);
    }
    return posts;
  }
}
