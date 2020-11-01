import 'package:botiknews/models/news.dart';
import 'package:botiknews/repositories/newsRepository.dart';
import 'package:flutter/widgets.dart';

class DashboardBloc extends ChangeNotifier {
  final newsRepository = new NewsRepository();
  List<News> news;

  DashboardBloc(){
    getAll();
  }

  getAll(){
    newsRepository.getAll().then((data){
      this.news = data;
      notifyListeners();
    });
  }
}