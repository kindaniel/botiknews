import 'package:botiknews/app/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  testWidgets('Should display texts widgets when login page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));
    final textsWidgets = find.byType(Text);
    expect(textsWidgets, findsNWidgets(6));
  });

  testWidgets(
      'Should display login button and sign up button when login page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));
    final loginButton = find.byType(FlatButton);
    expect(loginButton, findsNWidgets(2));
  });

  testWidgets('Should display containers when login page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginPage()));
    final containers = find.byType(Container);
    expect(containers, findsNWidgets(4));
  });
}
