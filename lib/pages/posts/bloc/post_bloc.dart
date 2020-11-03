import 'package:botiknews/models/post.dart';
import 'package:botiknews/repositories/posts/implementations/postLocalRepositoryImpl.dart';
import 'package:flutter/widgets.dart';

class PostBloc extends ChangeNotifier {
  final postRepository = new PostRepositoryImpl();
  List<Post> posts;

  PostBloc(){
    getAll();
  }

  getAll() async {
    final posts = await postRepository.findAll();
    this.posts = posts;
    notifyListeners();
  }

  Future<int> delete(Post item) async {
    final result = await postRepository.delete(item);
    await getAll();    
    return result;
  }

  Future<int> sendPost(text) async {
    final id = await postRepository.sendPost(text);
    await getAll();
    return id;
  }
}