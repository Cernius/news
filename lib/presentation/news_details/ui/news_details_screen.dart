import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/presentation/common/dialogs/dialogs.dart';
import 'package:news_api/presentation/common/utils/dimensions.dart';
import 'package:news_api/presentation/common/utils/get_images.dart';
import 'package:news_api/presentation/common/widgets/app_web_view.dart';

class NewsDetailsScreen extends StatelessWidget {
  final Article article;

  const NewsDetailsScreen({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _Image(imageUrl: article.urlToImage),
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
                        article.content ?? article.description ?? '',
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
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final String? imageUrl;

  const _Image({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return Image.network(
        imageUrl!,
        height: Dimensions.articleImageHeight,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    }
    return Image.asset(
      GetImages.imagePlaceHolder,
      width: double.infinity,
      height: Dimensions.articleImageHeight,
      fit: BoxFit.cover,
    );
  }
}
