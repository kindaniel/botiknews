import 'package:botiknews/components/loader.dart';
import 'package:botiknews/components/post_card.dart';
import 'package:botiknews/models/news.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  final List<News> news;

  NewsList({@required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      height: 674,
      child: Loader(
        object: news,
        callback: list,
      ),
    );
  }

  Widget list() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: news.length,
      itemBuilder: (context, index) {
        return PostCard(item: news[index]);
      },
    );
  }
}
