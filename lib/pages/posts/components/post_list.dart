import 'package:botiknews/components/loader.dart';
import 'package:botiknews/components/new_card.dart';
import 'package:botiknews/components/post_card.dart';
import 'package:botiknews/models/post.dart';
import 'package:flutter/material.dart';

class PostList extends StatelessWidget {
  final List<Post> posts;
  PostList({@required this.posts});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 600,
      child: Loader(
        object: posts,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return NewPostCard(item: posts[index]);
      },
    );
  }
}
