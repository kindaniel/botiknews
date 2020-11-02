import 'package:botiknews/pages/posts/bloc/post_bloc.dart';
import 'package:botiknews/pages/posts/components/post_list.dart';
import 'package:botiknews/pages/posts/components/post_form.dart';
import 'package:botiknews/utilities/nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PostBloc bloc = Provider.of<PostBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: PostList(posts: bloc.posts),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          push(
            context,
            PostForm(),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
