import 'package:botiknews/app/pages/login/bloc/user_bloc.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  var email;
  var password;
  var name;

  @override
  Widget build(BuildContext context) {
    var _userBloc = new UserBloc();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('assets/images/boti20.png')),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nome',
                      hintText: 'Digite seu nome'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Nome inválido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    this.name = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15.0, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15,),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Digite seu e-mail'),
                  validator: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'E-mail inválido';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    this.email = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                      hintText: 'Digite sua senha'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Senha Inválida';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    this.password = value;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      _userBloc.signup(
                          name: name,
                          context: context,
                          email: email,
                          password: password);
                    }
                  },
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
