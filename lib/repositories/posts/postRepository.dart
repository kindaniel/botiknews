import 'package:botiknews/models/post.dart';

abstract class PostRepository {
  Future<int> sendPost(text);
  Future<int> save(Post post);
  Future<int> delete(Post post);
  Future<List<Post>> findAll();
}
