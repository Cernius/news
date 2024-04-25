// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_list_observer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NewsListObserver on NewsListObserverBase, Store {
  late final _$articlesAtom =
      Atom(name: 'NewsListObserverBase.articles', context: context);

  @override
  ObservableList<Article> get articles {
    _$articlesAtom.reportRead();
    return super.articles;
  }

  @override
  set articles(ObservableList<Article> value) {
    _$articlesAtom.reportWrite(value, super.articles, () {
      super.articles = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'NewsListObserverBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$loadingMoreAtom =
      Atom(name: 'NewsListObserverBase.loadingMore', context: context);

  @override
  bool get loadingMore {
    _$loadingMoreAtom.reportRead();
    return super.loadingMore;
  }

  @override
  set loadingMore(bool value) {
    _$loadingMoreAtom.reportWrite(value, super.loadingMore, () {
      super.loadingMore = value;
    });
  }

  late final _$hasMoreArticlesAtom =
      Atom(name: 'NewsListObserverBase.hasMoreArticles', context: context);

  @override
  bool get hasMoreArticles {
    _$hasMoreArticlesAtom.reportRead();
    return super.hasMoreArticles;
  }

  @override
  set hasMoreArticles(bool value) {
    _$hasMoreArticlesAtom.reportWrite(value, super.hasMoreArticles, () {
      super.hasMoreArticles = value;
    });
  }

  late final _$getArticlesAsyncAction =
      AsyncAction('NewsListObserverBase.getArticles', context: context);

  @override
  Future<void> getArticles() {
    return _$getArticlesAsyncAction.run(() => super.getArticles());
  }

  late final _$getMoreArticlesAsyncAction =
      AsyncAction('NewsListObserverBase.getMoreArticles', context: context);

  @override
  Future<void> getMoreArticles() {
    return _$getMoreArticlesAsyncAction.run(() => super.getMoreArticles());
  }

  late final _$NewsListObserverBaseActionController =
      ActionController(name: 'NewsListObserverBase', context: context);

  @override
  List<Article> _removeDeletedArticles(List<Article> articles) {
    final _$actionInfo = _$NewsListObserverBaseActionController.startAction(
        name: 'NewsListObserverBase._removeDeletedArticles');
    try {
      return super._removeDeletedArticles(articles);
    } finally {
      _$NewsListObserverBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
articles: ${articles},
isLoading: ${isLoading},
loadingMore: ${loadingMore},
hasMoreArticles: ${hasMoreArticles}
    ''';
  }
}
