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

  @action
  Future<void> getArticles() async {
    setLoading(true);
    final articles = await _articleRepo.getArticles();
    final cleanArticles = _removeDeletedArticles(articles);
    this.articles = ObservableList.of(cleanArticles);
    setLoading(false);
  }

  @action
  List<Article> _removeDeletedArticles(List<Article> articles) {
    articles.removeWhere((article) => article.title == '[Removed]');
    return articles;
  }

  @action
  void setLoading(bool value) {
    isLoading = value;
  }
}
