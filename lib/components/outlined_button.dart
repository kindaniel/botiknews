import 'package:botiknews/pages/signup/signup.dart';
import 'package:botiknews/utilities/constants.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flutter/material.dart';

class OutlinedButton extends StatelessWidget {
  @required
  final String label;

  const OutlinedButton({Key key, this.label}) : super(key: key);

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
