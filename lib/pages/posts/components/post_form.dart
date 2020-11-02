import 'package:botiknews/pages/home.dart';
import 'package:botiknews/pages/posts/bloc/post_bloc.dart';
import 'package:botiknews/settings.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flutter/material.dart';

class PostForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PostBloc bloc = new PostBloc();
    final TextEditingController _postController = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[],
                    ))
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Envie seu post',
                    style: TextStyle(
                        fontFamily: Settings.fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('\\o/',
                    style: TextStyle(
                        fontFamily: Settings.fontFamily,
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(24.0),
                  child: TextField(
                    controller: _postController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueAccent, width: 0.0),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 0.0),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 0.0),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      elevation: 5.0,
                      child: Text('Enviar'),
                      onPressed: () async {
                        await bloc.sendPost(_postController.text);
                        pushReplacement(context, HomePage());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
