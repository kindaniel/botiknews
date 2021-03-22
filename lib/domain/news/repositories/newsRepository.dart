import 'package:botiknews/domain/news/models/news.dart';

abstract class NewsRepository {
  Future<List<News>> getAll();
}
