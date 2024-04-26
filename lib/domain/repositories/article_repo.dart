import 'package:news_api/domain/models/article.dart';

abstract class ArticleRepo {
  Future<List<Article>> getArticlesAPI({required int page});
  Future<List<Article>> getArticlesDB();
}
