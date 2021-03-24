import 'package:botiknews/app/pages/login/login_page.dart';
import 'package:botiknews/domain/users/models/user.dart';
import 'package:botiknews/app/pages/home.dart';
import 'package:botiknews/domain/users/repositories/implementations/userLocalRepositoryImpl.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';
import 'package:email_validator/email_validator.dart';

class UserBloc extends ChangeNotifier {
  final userLocalRepository = new UserLocalRepositoryImpl();
  signup({context, name, email, password}) async {
    if (!EmailValidator.validate(email)) {
      return _showFlushBar(
          title: 'Erro',
          message: 'Informe um e-mail válido.',
          context: context);
    }
    final user = new User(id: 0, name: name, email: email, password: password);
    try {
      await userLocalRepository.create(user);
      pushReplacement(context, LoginPage());
      _showFlushBar(
          title: 'OK!',
          message: 'Usuário cadastrado com sucesso. Faça login para continuar.',
          context: context);
    } catch (error) {
      _showFlushBar(title: 'Erro', message: error, context: context);
    }
  }

  login({context, email, password}) async {
    if (!EmailValidator.validate(email)) {
      return _showFlushBar(
          title: 'Erro',
          message: 'Informe um e-mail válido.',
          context: context);
    }
    final user =
        await userLocalRepository.getFirst(email: email, password: password);
    if (user.length != 0) {
      pushReplacement(context, HomePage());
    } else {
      _showFlushBar(
          title: 'Erro',
          message: 'Usuário ou senha incorretos.',
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
