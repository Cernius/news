import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_api/common/app_module.dart';
import 'package:news_api/presentation/common/utils/context_extensions.dart';
import 'package:news_api/presentation/news_list/bl/news_list_observer.dart';
import 'package:news_api/presentation/news_list/ui/news_list_empty_view.dart';
import 'package:news_api/presentation/news_list/ui/news_list_view.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final NewsListObserver _newsListObserver = getIt<NewsListObserver>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _newsListObserver.getArticles();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _newsListObserver.getMoreArticles();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News List'),
      ),
      body: SafeArea(
        bottom: false,
        child: Observer(
          builder: (_) {
            if (_newsListObserver.errorMessage.isNotEmpty) {
              return RefreshIndicator(
                onRefresh: () async {
                  _newsListObserver.getArticles();
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Center(
                    child: Text(
                      _newsListObserver.errorMessage,
                      style: context.theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
              );
            }
            if (_newsListObserver.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (_newsListObserver.articles.isEmpty) {
              const NewsListEmptyView();
            }
            return NewsListView(
              scrollController: _scrollController,
              newsListObserver: _newsListObserver,
            );
          },
        ),
      ),
    );
  }
}
