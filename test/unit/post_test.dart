import 'package:botiknews/domain/posts/models/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return the post content when create a Post', () {
    final post =
        Post(id: null, contentText: "conteúdo teste", userId: null, date: null);
    expect(post.contentText, "conteúdo teste");
  });
  test('Should return the userId when create a Post', () {
    final post =
        Post(id: null, contentText: "conteúdo teste", userId: 1, date: null);
    expect(post.userId, 1);
  });
  test('Should return the postId when create a Post', () {
    final post =
        Post(id: 101, contentText: "conteúdo teste", userId: 1, date: null);
    expect(post.id, 101);
  });

  test('Should return the post date when create a Post', () {
    final post = Post(
        id: 101, contentText: "conteúdo teste", userId: 1, date: '2021-03-22');
    expect(post.date, '2021-03-22');
  });
}
