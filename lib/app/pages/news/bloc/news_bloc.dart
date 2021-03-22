import 'package:botiknews/domain/news/models/news.dart';
import 'package:botiknews/domain/news/repositories/implementations/newsRemoteRepositoryImpl.dart';
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
