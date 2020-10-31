import 'package:botiknews/components/Input.dart';
import 'package:botiknews/components/decoration_container.dart';
import 'package:botiknews/components/outlined_button.dart';
import 'package:botiknews/components/checkbox.dart';
import 'package:botiknews/components/defaut_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              DecorationContainer(),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Cadastro',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Input(
                        labeltext: 'E-mail',
                        icon: Icons.email,
                        hintText: 'Digite seu email',
                        obscureText: false,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Input(
                        labeltext: 'Senha',
                        icon: Icons.lock,
                        hintText: 'Digite sua senha',
                        obscureText: true,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Input(
                        labeltext: 'Confirme sua senha',
                        icon: Icons.lock,
                        hintText: 'Confirme a senha',
                        obscureText: true,
                        keyboardType: TextInputType.number,
                      ),
                      DefaultButton(
                        text: 'Cadastrar',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
