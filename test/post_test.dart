import 'package:botiknews/models/post.dart';
import 'package:botiknews/pages/posts/components/post_form.dart';
import 'package:flutter/material.dart';
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
        id: 101, contentText: "conteúdo teste", userId: 1, date: '2021-02-21');
    expect(post.date, '2021-02-21');
  });

  // TESTE DA PÁGINA DE ENVIAR POSTS!
  testWidgets('Should display send post button', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PostForm()));
    final loginButton = find.byType(RaisedButton);
    expect(loginButton, findsOneWidget);
  });

  testWidgets('Should display send post text field',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PostForm()));
    final sendPostTextField = find.byType(TextField);
    expect(sendPostTextField, findsOneWidget);
  });

  testWidgets('Should display send post text field',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: PostForm()));
    final sendPostTextField = find.byType(TextField);
    expect(sendPostTextField, findsOneWidget);
  });
}
