import 'package:botiknews/models/user.dart';
import 'package:botiknews/pages/home.dart';
import 'package:botiknews/pages/login/login.dart';
import 'package:botiknews/repositories/users/implementations/userLocalRepositoryImpl.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/widgets.dart';
import 'package:email_validator/email_validator.dart';

class UserBloc extends ChangeNotifier {
  final userLocalRepository = new UserLocalRepositoryImpl();
  //@todo - refatorar as validações para reusabilidade de código
  signup({context, name, email, password}) async {
    if (!EmailValidator.validate(email)) {
      return _showFlushBar(
          title: 'Erro',
          message: 'Informe um e-mail válido.',
          context: context);
    }   
    if (email.isNotEmpty && password.isNotEmpty && name.isNotEmpty) {
      final user =
          new User(id: 0, name: name, email: email, password: password);
      try {
        await userLocalRepository.create(user);
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
      _showFlushBar(title: 'Erro', message: 'Informe os dados corretamente.', context: context);
    }
  }

  login({context, email, password}) async {
    if (!EmailValidator.validate(email)) {
      return _showFlushBar(
          title: 'Erro',
          message: 'Informe um e-mail válido.',
          context: context);
    }

    if (email.isEmpty || password.isEmpty) {
      return _showFlushBar(
          title: 'Erro',
          message: 'Informe o usuário e a senha.',
          context: context);
    }
    final user =
        await userLocalRepository.getFirst(email: email, password: password);
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
