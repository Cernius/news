import 'package:mobx/mobx.dart';
import 'package:news_api/common/app_module.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/domain/repositories/article_repo.dart';

part 'news_list_observer.g.dart';

class NewsListObserver = NewsListObserverBase with _$NewsListObserver;

abstract class NewsListObserverBase with Store {
  final ArticleRepo _articleRepo;

  NewsListObserverBase() : _articleRepo = getIt<ArticleRepo>();

  @observable
  ObservableList<Article> articles = ObservableList<Article>();

  @observable
  bool isLoading = false;

  @observable
  bool loadingMore = false;

  int page = 1;

  @observable
  bool hasMoreArticles = true;

  @action
  Future<void> getArticles() async {
    hasMoreArticles = true;
    page = 1;
    setLoading(true);
    final articles = await _articleRepo.getArticlesAPI(page);
    final cleanArticles = _removeDeletedArticles(articles);
    this.articles = ObservableList.of(cleanArticles);

    setLoading(false);
  }

  @action
  Future<void> getMoreArticles() async {
    page = page + 1;
    if (hasMoreArticles == false) return;
    setLoadingMore(true);
    final articles = await _articleRepo.getArticlesAPI(page);

    if (articles.isEmpty) {
      hasMoreArticles = false;
    }
    final cleanArticles = _removeDeletedArticles(articles);
    this.articles = ObservableList.of([...this.articles, ...cleanArticles]);
    setLoadingMore(false);
  }

  @action
  List<Article> _removeDeletedArticles(List<Article> articles) {
    articles.removeWhere((article) => article.title == '[Removed]');
    return articles;
  }

  void setLoading(bool value) {
    isLoading = value;
  }

  void setLoadingMore(bool value) {
    loadingMore = value;
  }
}
