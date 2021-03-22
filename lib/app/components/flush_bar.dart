import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class ShowFlushBar extends StatelessWidget {
  final String title;
  final String message;
  final BuildContext context;

  const ShowFlushBar({this.title, this.message, this.context});

  @override
  Widget build(BuildContext context) {
    return 
    Flushbar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
    )..show(context);
  }
}