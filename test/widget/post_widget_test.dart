import 'package:botiknews/app/pages/posts/components/post_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
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
