import 'package:botiknews/domain/news/repositories/newsRepository.dart';
import 'package:dio/dio.dart';
import 'package:botiknews/domain/news/models/news.dart';
import 'package:botiknews/settings.dart';

class NewsRepositoryImpl implements NewsRepository {
  Future<List<News>> getAll() async {
    Response response = await Dio().get(Settings.apiUrl);
    return (response.data['news'] as List)
        .map((oneNew) => News.fromJson(oneNew))
        .toList();
  }
}
