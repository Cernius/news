// Mocks generated by Mockito 5.4.4 from annotations
// in news_api/test/data/repositories/article_repo_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:connectivity_plus/connectivity_plus.dart' as _i10;
import 'package:connectivity_plus_platform_interface/connectivity_plus_platform_interface.dart'
    as _i11;
import 'package:dio/dio.dart' as _i2;
import 'package:drift/drift.dart' as _i4;
import 'package:drift/src/runtime/executor/stream_queries.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;
import 'package:news_api/data/db/database.dart' as _i3;
import 'package:news_api/data/models/article_dto.dart' as _i9;
import 'package:news_api/data/server_api.dart' as _i7;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$ArticlesDaoTable_1 extends _i1.SmartFake
    implements _i3.$ArticlesDaoTable {
  _Fake$ArticlesDaoTable_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _Fake$SourcesDaoTable_2 extends _i1.SmartFake
    implements _i3.$SourcesDaoTable {
  _Fake$SourcesDaoTable_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGeneratedDatabase_3 extends _i1.SmartFake
    implements _i4.GeneratedDatabase {
  _FakeGeneratedDatabase_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDriftDatabaseOptions_4 extends _i1.SmartFake
    implements _i4.DriftDatabaseOptions {
  _FakeDriftDatabaseOptions_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMigrationStrategy_5 extends _i1.SmartFake
    implements _i4.MigrationStrategy {
  _FakeMigrationStrategy_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamQueryUpdateRules_6 extends _i1.SmartFake
    implements _i4.StreamQueryUpdateRules {
  _FakeStreamQueryUpdateRules_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseConnection_7 extends _i1.SmartFake
    implements _i4.DatabaseConnection {
  _FakeDatabaseConnection_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeQueryExecutor_8 extends _i1.SmartFake implements _i4.QueryExecutor {
  _FakeQueryExecutor_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamQueryStore_9 extends _i1.SmartFake
    implements _i5.StreamQueryStore {
  _FakeStreamQueryStore_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseConnectionUser_10 extends _i1.SmartFake
    implements _i4.DatabaseConnectionUser {
  _FakeDatabaseConnectionUser_10(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMigrator_11 extends _i1.SmartFake implements _i4.Migrator {
  _FakeMigrator_11(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_12<T1> extends _i1.SmartFake implements _i6.Future<T1> {
  _FakeFuture_12(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInsertStatement_13<T1 extends _i4.Table, D1> extends _i1.SmartFake
    implements _i4.InsertStatement<T1, D1> {
  _FakeInsertStatement_13(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUpdateStatement_14<T extends _i4.Table, D> extends _i1.SmartFake
    implements _i4.UpdateStatement<T, D> {
  _FakeUpdateStatement_14(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSimpleSelectStatement_15<T1 extends _i4.HasResultSet, D>
    extends _i1.SmartFake implements _i4.SimpleSelectStatement<T1, D> {
  _FakeSimpleSelectStatement_15(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJoinedSelectStatement_16<FirstT extends _i4.HasResultSet, FirstD>
    extends _i1.SmartFake implements _i4.JoinedSelectStatement<FirstT, FirstD> {
  _FakeJoinedSelectStatement_16(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeleteStatement_17<T1 extends _i4.Table, D1> extends _i1.SmartFake
    implements _i4.DeleteStatement<T1, D1> {
  _FakeDeleteStatement_17(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSelectable_18<T> extends _i1.SmartFake implements _i4.Selectable<T> {
  _FakeSelectable_18(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGenerationContext_19 extends _i1.SmartFake
    implements _i4.GenerationContext {
  _FakeGenerationContext_19(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ServerApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockServerApi extends _i1.Mock implements _i7.ServerApi {
  @override
  String get serverUrl => (super.noSuchMethod(
        Invocation.getter(#serverUrl),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.getter(#serverUrl),
        ),
        returnValueForMissingStub: _i8.dummyValue<String>(
          this,
          Invocation.getter(#serverUrl),
        ),
      ) as String);

  @override
  Map<String, dynamic> get queryParameters => (super.noSuchMethod(
        Invocation.getter(#queryParameters),
        returnValue: <String, dynamic>{},
        returnValueForMissingStub: <String, dynamic>{},
      ) as Map<String, dynamic>);

  @override
  _i6.Future<_i2.Response<dynamic>> get(
    String? path, {
    Map<String, dynamic>? query,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {#query: query},
        ),
        returnValue:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #get,
            [path],
            {#query: query},
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #get,
            [path],
            {#query: query},
          ),
        )),
      ) as _i6.Future<_i2.Response<dynamic>>);

  @override
  _i6.Future<_i2.Response<dynamic>> post(
    String? path,
    dynamic data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [
            path,
            data,
          ],
        ),
        returnValue:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #post,
            [
              path,
              data,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #post,
            [
              path,
              data,
            ],
          ),
        )),
      ) as _i6.Future<_i2.Response<dynamic>>);

  @override
  _i6.Future<_i2.Response<dynamic>> put(
    String? path,
    dynamic data,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [
            path,
            data,
          ],
        ),
        returnValue:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #put,
            [
              path,
              data,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #put,
            [
              path,
              data,
            ],
          ),
        )),
      ) as _i6.Future<_i2.Response<dynamic>>);

  @override
  _i6.Future<_i2.Response<dynamic>> delete(String? path) => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
        ),
        returnValue:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #delete,
            [path],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Response<dynamic>>.value(_FakeResponse_0<dynamic>(
          this,
          Invocation.method(
            #delete,
            [path],
          ),
        )),
      ) as _i6.Future<_i2.Response<dynamic>>);

  @override
  _i6.Future<List<_i9.ArticleDTO>> getArticles(int? page) =>
      (super.noSuchMethod(
        Invocation.method(
          #getArticles,
          [page],
        ),
        returnValue: _i6.Future<List<_i9.ArticleDTO>>.value(<_i9.ArticleDTO>[]),
        returnValueForMissingStub:
            _i6.Future<List<_i9.ArticleDTO>>.value(<_i9.ArticleDTO>[]),
      ) as _i6.Future<List<_i9.ArticleDTO>>);
}

/// A class which mocks [AppDatabase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppDatabase extends _i1.Mock implements _i3.AppDatabase {
  @override
  int get schemaVersion => (super.noSuchMethod(
        Invocation.getter(#schemaVersion),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i3.$ArticlesDaoTable get articlesDao => (super.noSuchMethod(
        Invocation.getter(#articlesDao),
        returnValue: _Fake$ArticlesDaoTable_1(
          this,
          Invocation.getter(#articlesDao),
        ),
        returnValueForMissingStub: _Fake$ArticlesDaoTable_1(
          this,
          Invocation.getter(#articlesDao),
        ),
      ) as _i3.$ArticlesDaoTable);

  @override
  _i3.$SourcesDaoTable get sourcesDao => (super.noSuchMethod(
        Invocation.getter(#sourcesDao),
        returnValue: _Fake$SourcesDaoTable_2(
          this,
          Invocation.getter(#sourcesDao),
        ),
        returnValueForMissingStub: _Fake$SourcesDaoTable_2(
          this,
          Invocation.getter(#sourcesDao),
        ),
      ) as _i3.$SourcesDaoTable);

  @override
  Iterable<_i4.TableInfo<_i4.Table, Object?>> get allTables =>
      (super.noSuchMethod(
        Invocation.getter(#allTables),
        returnValue: <_i4.TableInfo<_i4.Table, Object?>>[],
        returnValueForMissingStub: <_i4.TableInfo<_i4.Table, Object?>>[],
      ) as Iterable<_i4.TableInfo<_i4.Table, Object?>>);

  @override
  List<_i4.DatabaseSchemaEntity> get allSchemaEntities => (super.noSuchMethod(
        Invocation.getter(#allSchemaEntities),
        returnValue: <_i4.DatabaseSchemaEntity>[],
        returnValueForMissingStub: <_i4.DatabaseSchemaEntity>[],
      ) as List<_i4.DatabaseSchemaEntity>);

  @override
  _i4.GeneratedDatabase get attachedDatabase => (super.noSuchMethod(
        Invocation.getter(#attachedDatabase),
        returnValue: _FakeGeneratedDatabase_3(
          this,
          Invocation.getter(#attachedDatabase),
        ),
        returnValueForMissingStub: _FakeGeneratedDatabase_3(
          this,
          Invocation.getter(#attachedDatabase),
        ),
      ) as _i4.GeneratedDatabase);

  @override
  _i4.DriftDatabaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeDriftDatabaseOptions_4(
          this,
          Invocation.getter(#options),
        ),
        returnValueForMissingStub: _FakeDriftDatabaseOptions_4(
          this,
          Invocation.getter(#options),
        ),
      ) as _i4.DriftDatabaseOptions);

  @override
  _i4.MigrationStrategy get migration => (super.noSuchMethod(
        Invocation.getter(#migration),
        returnValue: _FakeMigrationStrategy_5(
          this,
          Invocation.getter(#migration),
        ),
        returnValueForMissingStub: _FakeMigrationStrategy_5(
          this,
          Invocation.getter(#migration),
        ),
      ) as _i4.MigrationStrategy);

  @override
  _i4.StreamQueryUpdateRules get streamUpdateRules => (super.noSuchMethod(
        Invocation.getter(#streamUpdateRules),
        returnValue: _FakeStreamQueryUpdateRules_6(
          this,
          Invocation.getter(#streamUpdateRules),
        ),
        returnValueForMissingStub: _FakeStreamQueryUpdateRules_6(
          this,
          Invocation.getter(#streamUpdateRules),
        ),
      ) as _i4.StreamQueryUpdateRules);

  @override
  _i4.DatabaseConnection get connection => (super.noSuchMethod(
        Invocation.getter(#connection),
        returnValue: _FakeDatabaseConnection_7(
          this,
          Invocation.getter(#connection),
        ),
        returnValueForMissingStub: _FakeDatabaseConnection_7(
          this,
          Invocation.getter(#connection),
        ),
      ) as _i4.DatabaseConnection);

  @override
  _i4.SqlTypes get typeMapping => (super.noSuchMethod(
        Invocation.getter(#typeMapping),
        returnValue: _i8.dummyValue<_i4.SqlTypes>(
          this,
          Invocation.getter(#typeMapping),
        ),
        returnValueForMissingStub: _i8.dummyValue<_i4.SqlTypes>(
          this,
          Invocation.getter(#typeMapping),
        ),
      ) as _i4.SqlTypes);

  @override
  _i4.QueryExecutor get executor => (super.noSuchMethod(
        Invocation.getter(#executor),
        returnValue: _FakeQueryExecutor_8(
          this,
          Invocation.getter(#executor),
        ),
        returnValueForMissingStub: _FakeQueryExecutor_8(
          this,
          Invocation.getter(#executor),
        ),
      ) as _i4.QueryExecutor);

  @override
  _i5.StreamQueryStore get streamQueries => (super.noSuchMethod(
        Invocation.getter(#streamQueries),
        returnValue: _FakeStreamQueryStore_9(
          this,
          Invocation.getter(#streamQueries),
        ),
        returnValueForMissingStub: _FakeStreamQueryStore_9(
          this,
          Invocation.getter(#streamQueries),
        ),
      ) as _i5.StreamQueryStore);

  @override
  _i4.DatabaseConnectionUser get resolvedEngine => (super.noSuchMethod(
        Invocation.getter(#resolvedEngine),
        returnValue: _FakeDatabaseConnectionUser_10(
          this,
          Invocation.getter(#resolvedEngine),
        ),
        returnValueForMissingStub: _FakeDatabaseConnectionUser_10(
          this,
          Invocation.getter(#resolvedEngine),
        ),
      ) as _i4.DatabaseConnectionUser);

  @override
  _i6.Future<void> insertArticles(List<_i3.ArticlesDaoCompanion>? articles) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertArticles,
          [articles],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> insertSource(_i3.SourcesDaoCompanion? source) =>
      (super.noSuchMethod(
        Invocation.method(
          #insertSource,
          [source],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<List<_i3.ArticlesDaoData>> getArticles() => (super.noSuchMethod(
        Invocation.method(
          #getArticles,
          [],
        ),
        returnValue: _i6.Future<List<_i3.ArticlesDaoData>>.value(
            <_i3.ArticlesDaoData>[]),
        returnValueForMissingStub: _i6.Future<List<_i3.ArticlesDaoData>>.value(
            <_i3.ArticlesDaoData>[]),
      ) as _i6.Future<List<_i3.ArticlesDaoData>>);

  @override
  _i6.Future<List<_i3.SourcesDaoData>> getSources() => (super.noSuchMethod(
        Invocation.method(
          #getSources,
          [],
        ),
        returnValue:
            _i6.Future<List<_i3.SourcesDaoData>>.value(<_i3.SourcesDaoData>[]),
        returnValueForMissingStub:
            _i6.Future<List<_i3.SourcesDaoData>>.value(<_i3.SourcesDaoData>[]),
      ) as _i6.Future<List<_i3.SourcesDaoData>>);

  @override
  _i4.Migrator createMigrator() => (super.noSuchMethod(
        Invocation.method(
          #createMigrator,
          [],
        ),
        returnValue: _FakeMigrator_11(
          this,
          Invocation.method(
            #createMigrator,
            [],
          ),
        ),
        returnValueForMissingStub: _FakeMigrator_11(
          this,
          Invocation.method(
            #createMigrator,
            [],
          ),
        ),
      ) as _i4.Migrator);

  @override
  _i6.Future<void> beforeOpen(
    _i4.QueryExecutor? executor,
    _i4.OpeningDetails? details,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #beforeOpen,
          [
            executor,
            details,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Stream<List<Map<String, Object?>>> createStream(
          _i5.QueryStreamFetcher? stmt) =>
      (super.noSuchMethod(
        Invocation.method(
          #createStream,
          [stmt],
        ),
        returnValue: _i6.Stream<List<Map<String, Object?>>>.empty(),
        returnValueForMissingStub:
            _i6.Stream<List<Map<String, Object?>>>.empty(),
      ) as _i6.Stream<List<Map<String, Object?>>>);

  @override
  T alias<T, D>(
    _i4.ResultSetImplementation<T, D>? table,
    String? alias,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #alias,
          [
            table,
            alias,
          ],
        ),
        returnValue: _i8.dummyValue<T>(
          this,
          Invocation.method(
            #alias,
            [
              table,
              alias,
            ],
          ),
        ),
        returnValueForMissingStub: _i8.dummyValue<T>(
          this,
          Invocation.method(
            #alias,
            [
              table,
              alias,
            ],
          ),
        ),
      ) as T);

  @override
  void markTablesUpdated(Iterable<_i4.TableInfo<_i4.Table, dynamic>>? tables) =>
      super.noSuchMethod(
        Invocation.method(
          #markTablesUpdated,
          [tables],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyUpdates(Set<_i4.TableUpdate>? updates) => super.noSuchMethod(
        Invocation.method(
          #notifyUpdates,
          [updates],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Stream<Set<_i4.TableUpdate>> tableUpdates(
          [_i4.TableUpdateQuery? query = const _i4.TableUpdateQuery.any()]) =>
      (super.noSuchMethod(
        Invocation.method(
          #tableUpdates,
          [query],
        ),
        returnValue: _i6.Stream<Set<_i4.TableUpdate>>.empty(),
        returnValueForMissingStub: _i6.Stream<Set<_i4.TableUpdate>>.empty(),
      ) as _i6.Stream<Set<_i4.TableUpdate>>);

  @override
  _i6.Future<T> doWhenOpened<T>(
          _i6.FutureOr<T> Function(_i4.QueryExecutor)? fn) =>
      (super.noSuchMethod(
        Invocation.method(
          #doWhenOpened,
          [fn],
        ),
        returnValue: _i8.ifNotNull(
              _i8.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #doWhenOpened,
                  [fn],
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_12<T>(
              this,
              Invocation.method(
                #doWhenOpened,
                [fn],
              ),
            ),
        returnValueForMissingStub: _i8.ifNotNull(
              _i8.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #doWhenOpened,
                  [fn],
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_12<T>(
              this,
              Invocation.method(
                #doWhenOpened,
                [fn],
              ),
            ),
      ) as _i6.Future<T>);

  @override
  _i4.InsertStatement<T, D> into<T extends _i4.Table, D>(
          _i4.TableInfo<T, D>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #into,
          [table],
        ),
        returnValue: _FakeInsertStatement_13<T, D>(
          this,
          Invocation.method(
            #into,
            [table],
          ),
        ),
        returnValueForMissingStub: _FakeInsertStatement_13<T, D>(
          this,
          Invocation.method(
            #into,
            [table],
          ),
        ),
      ) as _i4.InsertStatement<T, D>);

  @override
  _i4.UpdateStatement<Tbl, R> update<Tbl extends _i4.Table, R>(
          _i4.TableInfo<Tbl, R>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #update,
          [table],
        ),
        returnValue: _FakeUpdateStatement_14<Tbl, R>(
          this,
          Invocation.method(
            #update,
            [table],
          ),
        ),
        returnValueForMissingStub: _FakeUpdateStatement_14<Tbl, R>(
          this,
          Invocation.method(
            #update,
            [table],
          ),
        ),
      ) as _i4.UpdateStatement<Tbl, R>);

  @override
  _i4.SimpleSelectStatement<T, R> select<T extends _i4.HasResultSet, R>(
    _i4.ResultSetImplementation<T, R>? table, {
    bool? distinct = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #select,
          [table],
          {#distinct: distinct},
        ),
        returnValue: _FakeSimpleSelectStatement_15<T, R>(
          this,
          Invocation.method(
            #select,
            [table],
            {#distinct: distinct},
          ),
        ),
        returnValueForMissingStub: _FakeSimpleSelectStatement_15<T, R>(
          this,
          Invocation.method(
            #select,
            [table],
            {#distinct: distinct},
          ),
        ),
      ) as _i4.SimpleSelectStatement<T, R>);

  @override
  _i4.JoinedSelectStatement<T, R> selectOnly<T extends _i4.HasResultSet, R>(
    _i4.ResultSetImplementation<T, R>? table, {
    bool? distinct = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectOnly,
          [table],
          {#distinct: distinct},
        ),
        returnValue: _FakeJoinedSelectStatement_16<T, R>(
          this,
          Invocation.method(
            #selectOnly,
            [table],
            {#distinct: distinct},
          ),
        ),
        returnValueForMissingStub: _FakeJoinedSelectStatement_16<T, R>(
          this,
          Invocation.method(
            #selectOnly,
            [table],
            {#distinct: distinct},
          ),
        ),
      ) as _i4.JoinedSelectStatement<T, R>);

  @override
  _i4.DeleteStatement<T, D> delete<T extends _i4.Table, D>(
          _i4.TableInfo<T, D>? table) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [table],
        ),
        returnValue: _FakeDeleteStatement_17<T, D>(
          this,
          Invocation.method(
            #delete,
            [table],
          ),
        ),
        returnValueForMissingStub: _FakeDeleteStatement_17<T, D>(
          this,
          Invocation.method(
            #delete,
            [table],
          ),
        ),
      ) as _i4.DeleteStatement<T, D>);

  @override
  _i6.Future<int> customUpdate(
    String? query, {
    List<_i4.Variable<Object>>? variables = const [],
    Set<_i4.TableInfo<_i4.Table, dynamic>>? updates,
    _i4.UpdateKind? updateKind,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customUpdate,
          [query],
          {
            #variables: variables,
            #updates: updates,
            #updateKind: updateKind,
          },
        ),
        returnValue: _i6.Future<int>.value(0),
        returnValueForMissingStub: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);

  @override
  _i6.Future<int> customInsert(
    String? query, {
    List<_i4.Variable<Object>>? variables = const [],
    Set<_i4.TableInfo<_i4.Table, dynamic>>? updates,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customInsert,
          [query],
          {
            #variables: variables,
            #updates: updates,
          },
        ),
        returnValue: _i6.Future<int>.value(0),
        returnValueForMissingStub: _i6.Future<int>.value(0),
      ) as _i6.Future<int>);

  @override
  _i6.Future<List<_i4.QueryRow>> customWriteReturning(
    String? query, {
    List<_i4.Variable<Object>>? variables = const [],
    Set<_i4.TableInfo<_i4.Table, dynamic>>? updates,
    _i4.UpdateKind? updateKind,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customWriteReturning,
          [query],
          {
            #variables: variables,
            #updates: updates,
            #updateKind: updateKind,
          },
        ),
        returnValue: _i6.Future<List<_i4.QueryRow>>.value(<_i4.QueryRow>[]),
        returnValueForMissingStub:
            _i6.Future<List<_i4.QueryRow>>.value(<_i4.QueryRow>[]),
      ) as _i6.Future<List<_i4.QueryRow>>);

  @override
  _i4.Selectable<_i4.QueryRow> customSelect(
    String? query, {
    List<_i4.Variable<Object>>? variables = const [],
    Set<_i4.ResultSetImplementation<dynamic, dynamic>>? readsFrom = const {},
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customSelect,
          [query],
          {
            #variables: variables,
            #readsFrom: readsFrom,
          },
        ),
        returnValue: _FakeSelectable_18<_i4.QueryRow>(
          this,
          Invocation.method(
            #customSelect,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
        returnValueForMissingStub: _FakeSelectable_18<_i4.QueryRow>(
          this,
          Invocation.method(
            #customSelect,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
      ) as _i4.Selectable<_i4.QueryRow>);

  @override
  _i4.Selectable<_i4.QueryRow> customSelectQuery(
    String? query, {
    List<_i4.Variable<Object>>? variables = const [],
    Set<_i4.ResultSetImplementation<dynamic, dynamic>>? readsFrom = const {},
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #customSelectQuery,
          [query],
          {
            #variables: variables,
            #readsFrom: readsFrom,
          },
        ),
        returnValue: _FakeSelectable_18<_i4.QueryRow>(
          this,
          Invocation.method(
            #customSelectQuery,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
        returnValueForMissingStub: _FakeSelectable_18<_i4.QueryRow>(
          this,
          Invocation.method(
            #customSelectQuery,
            [query],
            {
              #variables: variables,
              #readsFrom: readsFrom,
            },
          ),
        ),
      ) as _i4.Selectable<_i4.QueryRow>);

  @override
  _i6.Future<void> customStatement(
    String? statement, [
    List<dynamic>? args,
  ]) =>
      (super.noSuchMethod(
        Invocation.method(
          #customStatement,
          [
            statement,
            args,
          ],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<T> transaction<T>(
    _i6.Future<T> Function()? action, {
    bool? requireNew = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #transaction,
          [action],
          {#requireNew: requireNew},
        ),
        returnValue: _i8.ifNotNull(
              _i8.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #transaction,
                  [action],
                  {#requireNew: requireNew},
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_12<T>(
              this,
              Invocation.method(
                #transaction,
                [action],
                {#requireNew: requireNew},
              ),
            ),
        returnValueForMissingStub: _i8.ifNotNull(
              _i8.dummyValueOrNull<T>(
                this,
                Invocation.method(
                  #transaction,
                  [action],
                  {#requireNew: requireNew},
                ),
              ),
              (T v) => _i6.Future<T>.value(v),
            ) ??
            _FakeFuture_12<T>(
              this,
              Invocation.method(
                #transaction,
                [action],
                {#requireNew: requireNew},
              ),
            ),
      ) as _i6.Future<T>);

  @override
  _i6.Future<void> batch(_i6.FutureOr<void> Function(_i4.Batch)? runInBatch) =>
      (super.noSuchMethod(
        Invocation.method(
          #batch,
          [runInBatch],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i4.GenerationContext $write(
    _i4.Component? component, {
    bool? hasMultipleTables,
    int? startIndex,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$write,
          [component],
          {
            #hasMultipleTables: hasMultipleTables,
            #startIndex: startIndex,
          },
        ),
        returnValue: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$write,
            [component],
            {
              #hasMultipleTables: hasMultipleTables,
              #startIndex: startIndex,
            },
          ),
        ),
        returnValueForMissingStub: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$write,
            [component],
            {
              #hasMultipleTables: hasMultipleTables,
              #startIndex: startIndex,
            },
          ),
        ),
      ) as _i4.GenerationContext);

  @override
  _i4.GenerationContext $writeInsertable(
    _i4.TableInfo<_i4.Table, dynamic>? table,
    _i4.Insertable<dynamic>? insertable, {
    int? startIndex,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #$writeInsertable,
          [
            table,
            insertable,
          ],
          {#startIndex: startIndex},
        ),
        returnValue: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$writeInsertable,
            [
              table,
              insertable,
            ],
            {#startIndex: startIndex},
          ),
        ),
        returnValueForMissingStub: _FakeGenerationContext_19(
          this,
          Invocation.method(
            #$writeInsertable,
            [
              table,
              insertable,
            ],
            {#startIndex: startIndex},
          ),
        ),
      ) as _i4.GenerationContext);

  @override
  String $expandVar(
    int? start,
    int? amount,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #$expandVar,
          [
            start,
            amount,
          ],
        ),
        returnValue: _i8.dummyValue<String>(
          this,
          Invocation.method(
            #$expandVar,
            [
              start,
              amount,
            ],
          ),
        ),
        returnValueForMissingStub: _i8.dummyValue<String>(
          this,
          Invocation.method(
            #$expandVar,
            [
              start,
              amount,
            ],
          ),
        ),
      ) as String);
}

/// A class which mocks [Connectivity].
///
/// See the documentation for Mockito's code generation for more information.
class MockConnectivity extends _i1.Mock implements _i10.Connectivity {
  @override
  _i6.Stream<List<_i11.ConnectivityResult>> get onConnectivityChanged =>
      (super.noSuchMethod(
        Invocation.getter(#onConnectivityChanged),
        returnValue: _i6.Stream<List<_i11.ConnectivityResult>>.empty(),
        returnValueForMissingStub:
            _i6.Stream<List<_i11.ConnectivityResult>>.empty(),
      ) as _i6.Stream<List<_i11.ConnectivityResult>>);

  @override
  _i6.Future<List<_i11.ConnectivityResult>> checkConnectivity() =>
      (super.noSuchMethod(
        Invocation.method(
          #checkConnectivity,
          [],
        ),
        returnValue: _i6.Future<List<_i11.ConnectivityResult>>.value(
            <_i11.ConnectivityResult>[]),
        returnValueForMissingStub:
            _i6.Future<List<_i11.ConnectivityResult>>.value(
                <_i11.ConnectivityResult>[]),
      ) as _i6.Future<List<_i11.ConnectivityResult>>);
}
