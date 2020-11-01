import 'package:botiknews/components/news/news_list.dart';
import 'package:botiknews/pages/dashboard/bloc/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DashboardBloc>.value(
          value: DashboardBloc(),
        ),
      ],
      child: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DashboardBloc bloc = Provider.of<DashboardBloc>(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text("Novidades", style: Theme.of(context).textTheme.headline6),
            NewsList(
              news: bloc.news,
            ),
          ],
        ),
      ),
    );
  }
}
