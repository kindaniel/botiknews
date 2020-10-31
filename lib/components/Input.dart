import 'package:botiknews/utilities/constants.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  @required
  final IconData icon;
  @required
  final String hintText;
  @required
  final bool obscureText;
  @required
  final TextInputType keyboardType;
  @required
  final String labeltext;

  const Input(
      {this.icon,
      this.hintText,
      this.obscureText,
      this.keyboardType,
      this.labeltext});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          labeltext,
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: keyboardType,
            obscureText: obscureText,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                this.icon,
                color: Colors.white,
              ),
              hintText: this.hintText,
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
