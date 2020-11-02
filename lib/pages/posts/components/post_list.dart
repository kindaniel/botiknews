import 'package:botiknews/components/loader.dart';
import 'package:botiknews/models/post.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  final List<Post> posts;
  PostList({@required this.posts});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 160,
      child: Loader(
        object: posts,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Text(posts[index].id.toString());
      },
    );
  }
}
