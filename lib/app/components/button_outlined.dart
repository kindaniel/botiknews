import 'package:botiknews/app/pages/signup/signup.dart';
import 'package:botiknews/utilities/constants.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flutter/material.dart';

class ButtonOutlined extends StatelessWidget {
  @required
  final String label;

  const ButtonOutlined({Key key, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => push(context, SignUpScreen()),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          label,
          style: kLabelStyle,
        ),
      ),
    );
  }
}
