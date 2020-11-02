import 'package:botiknews/models/news.dart';
import 'package:botiknews/repositories/newsRepository.dart';
import 'package:flutter/widgets.dart';

class NewsBloc extends ChangeNotifier {
  final newsRepository = new NewsRepository();
  List<News> news;

  NewsBloc() {
    getAll();
  }

  getAll() async {
    final news = await newsRepository.getAll();
    this.news = news;
    notifyListeners();
  }
}
