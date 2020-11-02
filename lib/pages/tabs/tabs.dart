import 'package:botiknews/pages/news/news.dart';
import 'package:botiknews/pages/posts/posts.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      body: TabBarView(
        children: [
          NewsScreen(),
          Posts(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.star),
          ),
          Tab(
            icon: new Icon(Icons.dynamic_feed),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black26,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
