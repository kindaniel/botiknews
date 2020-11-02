import 'package:botiknews/database/app_database.dart';
import 'package:botiknews/models/post.dart';
import 'package:botiknews/pages/posts/bloc/post_bloc.dart';
import 'package:flutter/material.dart';

class PostForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PostBloc bloc = new PostBloc();
    final TextEditingController _postController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar novo post'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
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
                  child: Text('Enviar'),
                  onPressed: () {
                    bloc.sendPost(_postController.text).then(
                          (id) => Navigator.pop(context),
                        );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
