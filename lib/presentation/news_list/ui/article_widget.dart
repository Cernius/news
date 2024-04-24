import 'package:flutter/material.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/presentation/common/utils/date_time_extension.dart';
import 'package:news_api/presentation/common/utils/dimensions.dart';
import 'package:news_api/presentation/common/utils/get_images.dart';
import 'package:news_api/presentation/news_details/screens/news_details_screen.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;

  const ArticleWidget({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //Typically would implement go_router for routing, but for simplicity using the Navigator
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => NewsDetailsScreen(article: article),
            transitionDuration: const Duration(milliseconds: 100),
            reverseTransitionDuration: const Duration(milliseconds: 100),
            transitionsBuilder: (_, a, __, c) => FadeTransition(opacity: a, child: c),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radiusSmall),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              blurRadius: 4.0,
              offset: Offset(0, 0),
            ),
          ],
        ),
        padding: const EdgeInsets.all(Dimensions.paddingMedium),
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
                  ),
                  const SizedBox(height: Dimensions.paddingSmall),
                  Text(article.publishedAt.toFormattedDate()),
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
    if (imageUrl != null) {
      return Image.network(
        imageUrl!,
        height: Dimensions.imageHeight,
        width: Dimensions.imageWidth,
        fit: BoxFit.cover,
      );
    }

    return Image.asset(
      GetImages.imagePlaceHolder,
      height: Dimensions.imageHeight,
      width: Dimensions.imageWidth,
      fit: BoxFit.cover,
    );
  }
}
