import 'package:botiknews/app/pages/news/news_page.dart';
import 'package:botiknews/app/pages/posts/posts_page.dart';
import 'package:botiknews/app/pages/aboutme/about_me_page.dart';
import 'package:flutter/material.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          PostsPage(),
          NewsPage(),
          AboutMePage(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.dynamic_feed),
          ),
          Tab(
            icon: new Icon(Icons.dynamic_form),
          ),
          Tab(
            icon: new Icon(Icons.assignment_ind_sharp),
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
