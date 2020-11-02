import 'package:botiknews/repositories/userRepository.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';

class UserBloc extends ChangeNotifier {
  final userRepository = new UserRepository();

  signup(context) {
    Flushbar(
      title: "SIGN UP",
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      duration: Duration(seconds: 3),
    )..show(context);
  }

  login(context) {
    Flushbar(
      title: "login",
      message:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
      duration: Duration(seconds: 3),
    )..show(context);
  }
}
