import 'package:botiknews/models/news.dart';

abstract class NewsRepository {
  Future<List<News>> getAll();
}