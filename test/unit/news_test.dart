import 'package:botiknews/domain/news/models/news.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:botiknews/domain/news/repositories/implementations/newsRemoteRepositoryImpl.dart';

void main() {
  NewsRepositoryImpl newsRepositoryImpl = new NewsRepositoryImpl();
  test('Should receives a list of news', () async {
    final result = await newsRepositoryImpl.getAll();
    expect(result, isA<List<News>>());
  });
}
