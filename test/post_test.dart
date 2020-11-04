import 'package:botiknews/models/post.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return the post content when create a Post', () {
    final post =
        Post(id: null, contentText: "conteúdo teste", userId: null, date: null);
    expect(post.contentText, "conteúdo teste");
  });
}
