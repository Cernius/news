import 'package:flutter/material.dart';
import 'package:news_api/presentation/common/utils/context_extensions.dart';

class NewsListEmptyView extends StatelessWidget {
  const NewsListEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No articles found',
        style: context.theme.textTheme.headlineMedium,
      ),
    );
  }
}
