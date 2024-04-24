import 'package:news_api/domain/models/article.dart';

abstract class ArticleRepo {
  Future<List<Article>> getArticles();
}
