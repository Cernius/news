import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:news_api/common/app_module.dart';
import 'package:news_api/presentation/common/utils/dimensions.dart';
import 'package:news_api/presentation/news_list/bl/news_list_observer.dart';
import 'package:news_api/presentation/news_list/ui/article_widget.dart';

class NewsListScreen extends StatefulWidget {
  const NewsListScreen({super.key});

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
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
        child: Observer(
          builder: (_) {
            if (_newsListObserver.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return RefreshIndicator(
              onRefresh: () => _newsListObserver.getArticles(),
              child: SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _newsListObserver.articles.length,
                      padding: const EdgeInsets.only(bottom: Dimensions.paddingLarge),
                      itemBuilder: (context, index) {
                        final article = _newsListObserver.articles[index];
                        return ArticleWidget(article: article);
                      },
                    ),
                    _newsListObserver.loadingMore
                        ? const Padding(
                            padding: EdgeInsets.only(bottom: Dimensions.paddingLarge),
                            child: CircularProgressIndicator(),
                          )
                        : const SizedBox(),
                    AnimatedOpacity(
                      opacity: _newsListObserver.hasMoreArticles ? 0 : 1,
                      duration: const Duration(milliseconds: 200),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: Dimensions.paddingLarge),
                        child: Text(
                          'No more articles...',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
