import 'package:botiknews/app/components/button_outlined.dart';
import 'package:botiknews/app/pages/login/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  testWidgets('Should display texts widgets when login page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));
    final textsWidgets = find.byType(Text);
    expect(textsWidgets, findsNWidgets(7));
  });

  testWidgets('Should display login button when login page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));
    final loginButton = find.byType(ButtonOutlined);
    expect(loginButton, findsOneWidget);
  });

  testWidgets('Should display containers when login page is opened',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginScreen()));
    final containers = find.byType(Container);
    expect(containers, findsNWidgets(8));
  });
}
