import 'package:flutter/material.dart';
import 'package:news_api/presentation/common/utils/dimensions.dart';
import 'package:news_api/presentation/news_list/bl/news_list_observer.dart';
import 'package:news_api/presentation/news_list/ui/article_widget.dart';

class NewsListView extends StatelessWidget {
  final ScrollController scrollController;
  final NewsListObserver newsListObserver;

  const NewsListView({super.key, required this.scrollController, required this.newsListObserver});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => newsListObserver.getArticles(),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: newsListObserver.articles.length,
              padding: const EdgeInsets.only(bottom: Dimensions.paddingLarge),
              itemBuilder: (context, index) {
                final article = newsListObserver.articles[index];
                return ArticleWidget(article: article);
              },
            ),
            newsListObserver.loadingMore
                ? const Padding(
                    padding: EdgeInsets.only(bottom: Dimensions.paddingLarge),
                    child: CircularProgressIndicator(),
                  )
                : const SizedBox(),
            AnimatedOpacity(
              opacity: newsListObserver.hasMoreArticles ? 0 : 1,
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
  }
}
