import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_api/common/app_module.dart';
import 'package:news_api/presentation/news_list/bl/news_list_observer.dart';
import 'package:news_api/presentation/news_list/ui/article_widget.dart';

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  final NewsListObserver _newsListObserver = getIt<NewsListObserver>();

  @override
  void initState() {
    _newsListObserver.getArticles();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News List'),
      ),
      body: SafeArea(
        child: Observer(
          builder: (_) {
            if (_newsListObserver.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return RefreshIndicator(
              onRefresh: () => _newsListObserver.getArticles(),
              child: ListView.builder(
                itemCount: _newsListObserver.articles.length,
                itemBuilder: (context, index) {
                  final article = _newsListObserver.articles[index];
                  return ArticleWidget(article: article);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
