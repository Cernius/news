import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'database.g.dart';

class ArticlesDao extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get author => text().nullable()();

  TextColumn get title => text().nullable()();

  TextColumn get description => text().nullable()();

  TextColumn get url => text()();

  TextColumn get urlToImage => text().nullable()();

  DateTimeColumn get publishedAt => dateTime()();

  TextColumn get content => text().nullable()();

  TextColumn get sourceId => text().nullable()();
}

class SourcesDao extends Table {
  TextColumn get id => text().nullable()();

  TextColumn get name => text()();
}

@DriftDatabase(tables: [ArticlesDao, SourcesDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> insertArticles(List<ArticlesDaoCompanion> articles) async {
    await batch((batch) {
      batch.insertAll(articlesDao, articles);
    });
  }

  Future<void> insertSource(SourcesDaoCompanion source) async {
    await into(sourcesDao).insert(source);
  }

  Future<List<ArticlesDaoData>> getArticles() async {
    return await select(articlesDao).get();
  }

  Future<List<SourcesDaoData>> getSources() async {
    return await select(sourcesDao).get();
  }
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    // Also work around limitations on old Android versions
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    // Make sqlite3 pick a more suitable location for temporary files - the
    // one from the system may be inaccessible due to sandboxing.
    final cachebase = (await getTemporaryDirectory()).path;
    // We can't access /tmp on Android, which sqlite3 would try by default.
    // Explicitly tell it about the correct temporary directory.
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
