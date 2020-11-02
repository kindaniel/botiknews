import 'package:botiknews/models/user.dart';
import 'package:botiknews/pages/home.dart';
import 'package:botiknews/pages/login/login.dart';
import 'package:botiknews/repositories/userRepository.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';

class UserBloc extends ChangeNotifier {
  final userRepository = new UserRepository();

  signup({context, name, email, password}) async {
    if (email != null || password != null || name != null) {
      final user =
          new User(id: 0, name: name, email: email, password: password);
      try {
        await userRepository.create(user);
        pushReplacement(context, LoginScreen());
        _showFlushBar(
            title: 'OK!',
            message:
                'Usuário cadastrado com sucesso. Faça login para continuar.',
            context: context);
      } catch (error) {
        _showFlushBar(title: 'Erro', message: error, context: context);
      }
    } else {
      _showFlushBar(title: 'Erro', message: 'Erro', context: context);
    }
  }

  login({context, email, password}) async {
    debugPrint(email);
    if (email.isEmpty || password.isEmpty) {
      return _showFlushBar(
          title: 'Erro',
          message: 'Informe o usuário e a senha',
          context: context);
    }
    final user =
        await userRepository.getFirst(email: email, password: password);
    if (user.length != 0) {
      pushReplacement(context, HomePage());
    } else {
      _showFlushBar(
          title: 'Erro',
          message: 'Usuário não encontrado. Você fez o cadastro?',
          context: context);
    }
  }

  _showFlushBar({title, message, context}) {
    Flushbar(
      title: title,
      message: message,
      duration: Duration(seconds: 3),
    )..show(context);
  }
}
