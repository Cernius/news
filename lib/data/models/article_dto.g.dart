// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDTO _$ArticleDTOFromJson(Map<String, dynamic> json) => ArticleDTO(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String?,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      content: json['content'] as String?,
      source: SourceDTO.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleDTOToJson(ArticleDTO instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'content': instance.content,
      'source': instance.source,
    };
