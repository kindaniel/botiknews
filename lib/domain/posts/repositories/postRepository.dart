import 'package:botiknews/domain/posts/models/post.dart';

abstract class PostRepository {
  Future<int> sendPost(text);
  Future<int> save(Post post);
  Future<int> editPost(Post post, String newText);
  Future<int> delete(Post post);
  Future<List<Post>> findAll();
}
