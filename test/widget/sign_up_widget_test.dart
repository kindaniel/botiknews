import 'package:botiknews/app/pages/signup/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  testWidgets('Should display texts widgets when sign up page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SignUpScreen()));
    final textsWidgets = find.byType(Text);
    expect(textsWidgets, findsNWidgets(8));
  });

  testWidgets('Should display sign up button when sign up page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SignUpScreen()));
    final loginButton = find.byType(RaisedButton);
    expect(loginButton, findsNWidgets(1));
  });

  testWidgets('Should display containers when sign up page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SignUpScreen()));
    final containers = find.byType(Container);
    expect(containers, findsNWidgets(7));
  });
}
