import 'package:botiknews/pages/news/bloc/news_bloc.dart';
import 'package:botiknews/pages/news/components/news_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NewsBloc bloc = Provider.of<NewsBloc>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Novidades'),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: NewsList(
          news: bloc.news,
        ),
      ),
    );
  }
}
