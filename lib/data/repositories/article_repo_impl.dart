import 'package:news_api/data/mappers/article_mapper.dart';
import 'package:news_api/data/models/article_dto.dart';
import 'package:news_api/data/server_api.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/domain/repositories/article_repo.dart';

class ArticleRepoImpl extends ArticleRepo {
  final ServerApi _serverApi;
  final ArticleMapper _articleMapper = ArticleMapper();

  ArticleRepoImpl(this._serverApi);

  @override
  Future<List<Article>> getArticles() async {
    final articles = await _serverApi.getArticles();
    return mapArticles(articles);
  }

  List<Article> mapArticles(List<ArticleDTO> articles) {
    return articles.map((e) => _articleMapper.map(e)).toList();
  }
}
