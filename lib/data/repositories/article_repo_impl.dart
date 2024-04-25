import 'package:news_api/data/db/database.dart';
import 'package:news_api/data/mappers/article_mapper.dart';
import 'package:news_api/data/mappers/source_mapper.dart';
import 'package:news_api/data/models/article_dto.dart';
import 'package:news_api/data/server_api.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/domain/models/source.dart';
import 'package:news_api/domain/repositories/article_repo.dart';

class ArticleRepoImpl extends ArticleRepo {
  final ServerApi _serverApi;
  final AppDatabase _appDatabase;
  final ArticleMapper _articleMapper = ArticleMapper();
  final SourceMapper _sourceMapper = SourceMapper();

  ArticleRepoImpl(this._serverApi, this._appDatabase);

  @override
  Future<List<Article>> getArticlesAPI(int page) async {
    final articles = await _serverApi.getArticles(page);
    final mappedArticles = mapArticlesFromApi(articles);
    insertArticlesToDB(mappedArticles);
    return mappedArticles;
  }

  List<Article> mapArticlesFromApi(List<ArticleDTO> articles) {
    return articles.map((e) => _articleMapper.map(e)).toList();
  }

  @override
  Future<List<Article>> getArticlesDB() async {
    final List<ArticlesDaoData> articles = await _appDatabase.getArticles();

    final List<SourcesDaoData> sources = await _appDatabase.getSources();

    return mapArticlesFromDB(articles, sources);
  }

  List<Article> mapArticlesFromDB(
    List<ArticlesDaoData> articles,
    List<SourcesDaoData> sources,
  ) {
    return articles.map((article) {
      final source = sources.firstWhere((source) => source.id == article.sourceId);
      return _articleMapper.mapFromDao(article, source);
    }).toList();
  }

  Future<void> insertArticlesToDB(List<Article> articles) async {
    final List<ArticlesDaoCompanion> articlesDao = articles.map((article) {
      insertSourceToDb(article.source);
      return _articleMapper.mapToDao(article);
    }).toList();

    insertArticles(articlesDao);
  }

  Future<void> insertSourceToDb(Source source) async {
    final SourcesDaoCompanion sourceDao = _sourceMapper.mapToDao(source);

    insertSource(sourceDao);
  }

  Future<void> insertArticles(List<ArticlesDaoCompanion> articles) async {
    await _appDatabase.insertArticles(articles);
  }

  Future<void> insertSource(SourcesDaoCompanion source) async {
    await _appDatabase.insertSource(source);
  }
}
