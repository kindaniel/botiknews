import 'package:botiknews/app/components/loader.dart';
import 'package:botiknews/app/components/card_news.dart';
import 'package:botiknews/domain/posts/models/post.dart';
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
