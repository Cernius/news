import 'dart:developer';

import 'package:mobx/mobx.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/domain/repositories/article_repo.dart';

part 'news_list_observer.g.dart';

class NewsListObserver = NewsListObserverBase with _$NewsListObserver;

abstract class NewsListObserverBase with Store {
  final ArticleRepo _articleRepo;

  NewsListObserverBase(ArticleRepo articleRepo) : _articleRepo = articleRepo;

  @observable
  ObservableList<Article> articles = ObservableList<Article>();

  @observable
  bool isLoading = false;

  @observable
  bool loadingMore = false;

  @observable
  bool hasMoreArticles = true;

  @observable
  String errorMessage = '';

  int page = 1;

  @action
  Future<void> getArticles() async {
    try {
      resetPagination();
      setLoading(true);
      final fetchedArticles = await _fetchArticles(page);
      setArticles(fetchedArticles);
      setLoading(false);
    } catch (e) {
      handleError(e);
    }
  }

  @action
  Future<void> getMoreArticles() async {
    try {
      page++;
      setLoadingMore(true);
      final fetchedArticles = await _fetchArticles(page);
      appendArticles(fetchedArticles);
      setLoadingMore(false);
    } catch (e) {
      handleError(e);
    }
  }

  Future<List<Article>> _fetchArticles(int page) async {
    final articles = await _articleRepo.getArticlesAPI(page: page);
    return _removeDeletedArticles(articles);
  }

  List<Article> _removeDeletedArticles(List<Article> articles) {
    return articles.where((article) => article.title != '[Removed]').toList();
  }

  void resetPagination() {
    page = 1;
    hasMoreArticles = true;
  }

  void setLoading(bool value) {
    isLoading = value;
  }

  void setLoadingMore(bool value) {
    loadingMore = value;
  }

  void handleError(dynamic error) {
    log(error.toString());
    errorMessage = error.toString();
  }

  void setArticles(List<Article> newArticles) {
    articles.clear();
    articles.addAll(newArticles);
  }

  void appendArticles(List<Article> newArticles) {
    articles.addAll(newArticles);
    if (newArticles.isEmpty) {
      hasMoreArticles = false;
    }
  }
}
