import 'package:flutter/material.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/presentation/common/utils/context_extensions.dart';
import 'package:news_api/presentation/common/utils/date_time_extension.dart';
import 'package:news_api/presentation/common/utils/dimensions.dart';
import 'package:news_api/presentation/common/utils/get_images.dart';
import 'package:news_api/presentation/news_details/ui/news_details_screen.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget({super.key, required this.article});

  void navigateToNewsDetailsScreen(Article article, context) {
    //Typically would implement go_router for routing, but for simplicity using the Navigator
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => NewsDetailsScreen(article: article),
        transitionDuration: const Duration(milliseconds: 100),
        reverseTransitionDuration: const Duration(milliseconds: 100),
        transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToNewsDetailsScreen(article, context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              blurRadius: 4.0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(Dimensions.paddingSmall),
        margin: const EdgeInsets.symmetric(
          horizontal: Dimensions.paddingSmall,
          vertical: Dimensions.paddingExtraSmall,
        ),
        child: Row(
          children: [
            _Image(imageUrl: article.urlToImage),
            const SizedBox(width: Dimensions.paddingSmall),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title ?? '',
                    maxLines: 3,
                    style: context.theme.textTheme.labelLarge,
                  ),
                  const SizedBox(height: Dimensions.paddingSmall),
                  Text(
                    article.publishedAt.toFormattedDate(),
                    style: context.theme.textTheme.bodySmall?.copyWith(
                      color: context.theme.colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            )
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
      child: _getImage(),
    );
  }

  Widget _getImage() {
    if (imageUrl == null) {
      return Image.asset(
        GetImages.imagePlaceHolder,
        width: Dimensions.listImageWidth,
        height: Dimensions.listImageHeight,
        fit: BoxFit.cover,
      );
    }
    return Image.network(
      imageUrl!,
      width: Dimensions.listImageWidth,
      height: Dimensions.listImageHeight,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Image.asset(
          GetImages.imagePlaceHolder,
          width: Dimensions.listImageWidth,
          height: Dimensions.listImageHeight,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
