import 'package:botiknews/app/components/theme.dart';
import 'package:botiknews/app/pages/login/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BotikNews());

class BotikNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: botikTheme,
      home: MyHomePage(title: 'Eu vs Thanos!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LoginPage();
  }
}

/*Widget _introScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 0,
        backgroundColor: Colors.blue[100],
        image: Image.asset('assets/images/euvsthanosrounded.png'),
        title: Text(
          "{name: 'Daniel Kin', age:'28', obs:'Desenvolvedor Flutter'}",
          maxLines: 5,
          overflow: TextOverflow.fade,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        photoSize: 200.0,
        loaderColor: Colors.red,
        navigateAfterSeconds: LoginPage(),
      ),
    ],
  );
}*/
