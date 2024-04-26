// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ArticlesDaoTable extends ArticlesDao
    with TableInfo<$ArticlesDaoTable, ArticlesDaoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticlesDaoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
      'url', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _urlToImageMeta =
      const VerificationMeta('urlToImage');
  @override
  late final GeneratedColumn<String> urlToImage = GeneratedColumn<String>(
      'url_to_image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _publishedAtMeta =
      const VerificationMeta('publishedAt');
  @override
  late final GeneratedColumn<DateTime> publishedAt = GeneratedColumn<DateTime>(
      'published_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sourceIdMeta =
      const VerificationMeta('sourceId');
  @override
  late final GeneratedColumn<String> sourceId = GeneratedColumn<String>(
      'source_id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content,
        sourceId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'articles_dao';
  @override
  VerificationContext validateIntegrity(Insertable<ArticlesDaoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('url_to_image')) {
      context.handle(
          _urlToImageMeta,
          urlToImage.isAcceptableOrUnknown(
              data['url_to_image']!, _urlToImageMeta));
    }
    if (data.containsKey('published_at')) {
      context.handle(
          _publishedAtMeta,
          publishedAt.isAcceptableOrUnknown(
              data['published_at']!, _publishedAtMeta));
    } else if (isInserting) {
      context.missing(_publishedAtMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    if (data.containsKey('source_id')) {
      context.handle(_sourceIdMeta,
          sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ArticlesDaoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticlesDaoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      url: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url'])!,
      urlToImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}url_to_image']),
      publishedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}published_at'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content']),
      sourceId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_id']),
    );
  }

  @override
  $ArticlesDaoTable createAlias(String alias) {
    return $ArticlesDaoTable(attachedDatabase, alias);
  }
}

class ArticlesDaoData extends DataClass implements Insertable<ArticlesDaoData> {
  final int id;
  final String? author;
  final String? title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;
  final String? sourceId;
  const ArticlesDaoData(
      {required this.id,
      this.author,
      this.title,
      this.description,
      required this.url,
      this.urlToImage,
      required this.publishedAt,
      this.content,
      this.sourceId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['url'] = Variable<String>(url);
    if (!nullToAbsent || urlToImage != null) {
      map['url_to_image'] = Variable<String>(urlToImage);
    }
    map['published_at'] = Variable<DateTime>(publishedAt);
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    if (!nullToAbsent || sourceId != null) {
      map['source_id'] = Variable<String>(sourceId);
    }
    return map;
  }

  ArticlesDaoCompanion toCompanion(bool nullToAbsent) {
    return ArticlesDaoCompanion(
      id: Value(id),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      url: Value(url),
      urlToImage: urlToImage == null && nullToAbsent
          ? const Value.absent()
          : Value(urlToImage),
      publishedAt: Value(publishedAt),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      sourceId: sourceId == null && nullToAbsent
          ? const Value.absent()
          : Value(sourceId),
    );
  }

  factory ArticlesDaoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ArticlesDaoData(
      id: serializer.fromJson<int>(json['id']),
      author: serializer.fromJson<String?>(json['author']),
      title: serializer.fromJson<String?>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      url: serializer.fromJson<String>(json['url']),
      urlToImage: serializer.fromJson<String?>(json['urlToImage']),
      publishedAt: serializer.fromJson<DateTime>(json['publishedAt']),
      content: serializer.fromJson<String?>(json['content']),
      sourceId: serializer.fromJson<String?>(json['sourceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'author': serializer.toJson<String?>(author),
      'title': serializer.toJson<String?>(title),
      'description': serializer.toJson<String?>(description),
      'url': serializer.toJson<String>(url),
      'urlToImage': serializer.toJson<String?>(urlToImage),
      'publishedAt': serializer.toJson<DateTime>(publishedAt),
      'content': serializer.toJson<String?>(content),
      'sourceId': serializer.toJson<String?>(sourceId),
    };
  }

  ArticlesDaoData copyWith(
          {int? id,
          Value<String?> author = const Value.absent(),
          Value<String?> title = const Value.absent(),
          Value<String?> description = const Value.absent(),
          String? url,
          Value<String?> urlToImage = const Value.absent(),
          DateTime? publishedAt,
          Value<String?> content = const Value.absent(),
          Value<String?> sourceId = const Value.absent()}) =>
      ArticlesDaoData(
        id: id ?? this.id,
        author: author.present ? author.value : this.author,
        title: title.present ? title.value : this.title,
        description: description.present ? description.value : this.description,
        url: url ?? this.url,
        urlToImage: urlToImage.present ? urlToImage.value : this.urlToImage,
        publishedAt: publishedAt ?? this.publishedAt,
        content: content.present ? content.value : this.content,
        sourceId: sourceId.present ? sourceId.value : this.sourceId,
      );
  @override
  String toString() {
    return (StringBuffer('ArticlesDaoData(')
          ..write('id: $id, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content, ')
          ..write('sourceId: $sourceId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, author, title, description, url,
      urlToImage, publishedAt, content, sourceId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ArticlesDaoData &&
          other.id == this.id &&
          other.author == this.author &&
          other.title == this.title &&
          other.description == this.description &&
          other.url == this.url &&
          other.urlToImage == this.urlToImage &&
          other.publishedAt == this.publishedAt &&
          other.content == this.content &&
          other.sourceId == this.sourceId);
}

class ArticlesDaoCompanion extends UpdateCompanion<ArticlesDaoData> {
  final Value<int> id;
  final Value<String?> author;
  final Value<String?> title;
  final Value<String?> description;
  final Value<String> url;
  final Value<String?> urlToImage;
  final Value<DateTime> publishedAt;
  final Value<String?> content;
  final Value<String?> sourceId;
  const ArticlesDaoCompanion({
    this.id = const Value.absent(),
    this.author = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.urlToImage = const Value.absent(),
    this.publishedAt = const Value.absent(),
    this.content = const Value.absent(),
    this.sourceId = const Value.absent(),
  });
  ArticlesDaoCompanion.insert({
    this.id = const Value.absent(),
    this.author = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    required String url,
    this.urlToImage = const Value.absent(),
    required DateTime publishedAt,
    this.content = const Value.absent(),
    this.sourceId = const Value.absent(),
  })  : url = Value(url),
        publishedAt = Value(publishedAt);
  static Insertable<ArticlesDaoData> custom({
    Expression<int>? id,
    Expression<String>? author,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? url,
    Expression<String>? urlToImage,
    Expression<DateTime>? publishedAt,
    Expression<String>? content,
    Expression<String>? sourceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (author != null) 'author': author,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (url != null) 'url': url,
      if (urlToImage != null) 'url_to_image': urlToImage,
      if (publishedAt != null) 'published_at': publishedAt,
      if (content != null) 'content': content,
      if (sourceId != null) 'source_id': sourceId,
    });
  }

  ArticlesDaoCompanion copyWith(
      {Value<int>? id,
      Value<String?>? author,
      Value<String?>? title,
      Value<String?>? description,
      Value<String>? url,
      Value<String?>? urlToImage,
      Value<DateTime>? publishedAt,
      Value<String?>? content,
      Value<String?>? sourceId}) {
    return ArticlesDaoCompanion(
      id: id ?? this.id,
      author: author ?? this.author,
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      urlToImage: urlToImage ?? this.urlToImage,
      publishedAt: publishedAt ?? this.publishedAt,
      content: content ?? this.content,
      sourceId: sourceId ?? this.sourceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (urlToImage.present) {
      map['url_to_image'] = Variable<String>(urlToImage.value);
    }
    if (publishedAt.present) {
      map['published_at'] = Variable<DateTime>(publishedAt.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (sourceId.present) {
      map['source_id'] = Variable<String>(sourceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ArticlesDaoCompanion(')
          ..write('id: $id, ')
          ..write('author: $author, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('publishedAt: $publishedAt, ')
          ..write('content: $content, ')
          ..write('sourceId: $sourceId')
          ..write(')'))
        .toString();
  }
}

class $SourcesDaoTable extends SourcesDao
    with TableInfo<$SourcesDaoTable, SourcesDaoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SourcesDaoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sources_dao';
  @override
  VerificationContext validateIntegrity(Insertable<SourcesDaoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SourcesDaoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SourcesDaoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $SourcesDaoTable createAlias(String alias) {
    return $SourcesDaoTable(attachedDatabase, alias);
  }
}

class SourcesDaoData extends DataClass implements Insertable<SourcesDaoData> {
  final String? id;
  final String name;
  const SourcesDaoData({this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    map['name'] = Variable<String>(name);
    return map;
  }

  SourcesDaoCompanion toCompanion(bool nullToAbsent) {
    return SourcesDaoCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: Value(name),
    );
  }

  factory SourcesDaoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SourcesDaoData(
      id: serializer.fromJson<String?>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  SourcesDaoData copyWith(
          {Value<String?> id = const Value.absent(), String? name}) =>
      SourcesDaoData(
        id: id.present ? id.value : this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('SourcesDaoData(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SourcesDaoData &&
          other.id == this.id &&
          other.name == this.name);
}

class SourcesDaoCompanion extends UpdateCompanion<SourcesDaoData> {
  final Value<String?> id;
  final Value<String> name;
  final Value<int> rowid;
  const SourcesDaoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SourcesDaoCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.rowid = const Value.absent(),
  }) : name = Value(name);
  static Insertable<SourcesDaoData> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SourcesDaoCompanion copyWith(
      {Value<String?>? id, Value<String>? name, Value<int>? rowid}) {
    return SourcesDaoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SourcesDaoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $ArticlesDaoTable articlesDao = $ArticlesDaoTable(this);
  late final $SourcesDaoTable sourcesDao = $SourcesDaoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [articlesDao, sourcesDao];
}
