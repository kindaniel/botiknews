import 'package:botiknews/components/Input.dart';
import 'package:botiknews/components/decoration_container.dart';
import 'package:botiknews/components/button_outlined.dart';
import 'package:botiknews/components/checkbox.dart';
import 'package:botiknews/components/defaut_button.dart';
import 'package:botiknews/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                        'Login',
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
                      ButtonOutlined(
                        label: 'Cadastrar',
                      ),
                      CheckBox(),
                      DefaultButton(
                        text: 'Entrar',
                        page: DashboardScreen(),
                      )
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
