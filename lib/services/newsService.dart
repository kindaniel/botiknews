import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:botiknews/models/news.dart';

class NewsService {
  static Future<List<News>> getNews() async {
    final url = 'https://gb-mobile-app-teste.s3.amazonaws.com/data.json';
    final response = await http.get(url);
    final mapMovies = json.decode(response.body)['news'];
    final movies = mapMovies.map<News>((json) => News.fromJson(json)).toList();
    return movies;
  }
}
