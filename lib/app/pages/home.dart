import 'package:botiknews/app/pages/login/bloc/user_bloc.dart';
import 'package:botiknews/app/pages/news/bloc/news_bloc.dart';
import 'package:botiknews/app/pages/posts/bloc/post_bloc.dart';
import 'package:botiknews/app/pages/tabs/tabs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NewsBloc>.value(
          value: NewsBloc(),
        ),
        ChangeNotifierProvider<PostBloc>.value(
          value: PostBloc(),
        ),
        ChangeNotifierProvider<UserBloc>.value(
          value: UserBloc(),
        )
      ],
      child: DefaultTabController(
        length: 2,
        child: TabsPage(),
      ),
    );
  }
}
