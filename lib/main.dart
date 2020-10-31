import 'package:botiknews/components/theme.dart';
import 'package:botiknews/pages/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: botikTheme,
      home: LoginScreen(),
    );
  }
}
