import 'package:botiknews/domain/posts/models/post.dart';
import 'package:botiknews/domain/posts/repositories/implementations/postLocalRepositoryImpl.dart';
import 'package:flutter/widgets.dart';

class PostBloc extends ChangeNotifier {
  final postRepository = new PostRepositoryImpl();
  List<Post> posts;

  PostBloc() {
    getAll();
  }

  getAll() async {
    final posts = await postRepository.findAll();
    this.posts = posts;
    notifyListeners();
  }

  Future<int> editPost({post, newText}) async {
    final result = await postRepository.editPost(post, newText);
    await getAll();
    return result;
  }

  Future<int> delete(Post item) async {
    final result = await postRepository.delete(item);
    await getAll();
    return result;
  }

  Future<void> sendPost(text) async {
    await postRepository.sendPost(text);
    await getAll();
  }
}
