import 'package:news_api/data/mappers/source_mapper.dart';
import 'package:news_api/data/models/article_dto.dart';
import 'package:news_api/domain/mappers/mapper.dart';
import 'package:news_api/domain/models/article.dart';

class ArticleMapper extends Mapper<ArticleDTO, Article> {
  final SourceMapper _sourceMapper = SourceMapper();

  @override
  Article map(ArticleDTO input) {
    return Article(
      author: input.author,
      title: input.title,
      description: input.description,
      url: input.url,
      urlToImage: input.urlToImage,
      publishedAt: input.publishedAt,
      content: input.content,
      source: _sourceMapper.map(input.source),
    );
  }
}
