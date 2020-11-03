import 'package:botiknews/models/news.dart';
import 'package:botiknews/repositories/news/implementations/newsRemoteRepositoryImpl.dart';
import 'package:flutter/widgets.dart';

class NewsBloc extends ChangeNotifier {
  final newsRepository = new NewsRepositoryImpl();
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
