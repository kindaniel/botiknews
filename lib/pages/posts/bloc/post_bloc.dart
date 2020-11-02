import 'package:botiknews/models/post.dart';
import 'package:botiknews/repositories/postRepository.dart';
import 'package:flutter/widgets.dart';

class PostBloc extends ChangeNotifier {
  final postRepository = new PostRepository();
  List<Post> posts;

  PostBloc(){
    getAll();
  }

  getAll() async {
    final posts = await postRepository.findAll();
    this.posts = posts;
    notifyListeners();
  }

  Future<int> sendPost(text) async {
    final id = await postRepository.sendPost(text);
    await getAll();
    notifyListeners();
    return id;
  }
}