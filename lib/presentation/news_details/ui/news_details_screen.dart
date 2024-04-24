import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/presentation/common/dialogs/dialogs.dart';
import 'package:news_api/presentation/common/utils/dimensions.dart';
import 'package:news_api/presentation/common/widgets/app_web_view.dart';

class NewsDetailsScreen extends StatelessWidget {
  final Article article;

  const NewsDetailsScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (article.urlToImage != null)
                    Image.network(
                      article.urlToImage!,
                      height: Dimensions.articleImageHeight,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  const SizedBox(height: Dimensions.paddingMedium),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingMedium),
                    child: Text(
                      article.title ?? '',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(height: Dimensions.paddingMedium),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingMedium),
                    child: Text(
                      article.content ?? '',
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingMedium),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  Dialogs.showBottomSheetDialog(
                    context,
                    AppWebView(url: article.url),
                  );
                },
                child: const Text('Read full article online'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
