import 'package:json_annotation/json_annotation.dart';
import 'package:news_api/data/models/source_dto.dart';


part 'article_dto.g.dart';

@JsonSerializable()
class ArticleDTO {
  final String? author;
  final String? title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;
  final SourceDTO source;

  ArticleDTO({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
    required this.source,
  });

  factory ArticleDTO.fromJson(Map<String, dynamic> json) => _$ArticleDTOFromJson(json);
}
