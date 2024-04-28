import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_api/data/db/database.dart';
import 'package:news_api/data/models/article_dto.dart';
import 'package:news_api/data/models/source_dto.dart';
import 'package:news_api/data/repositories/article_repo_impl.dart';
import 'package:news_api/data/server_api.dart';
import 'package:news_api/domain/repositories/article_repo.dart';
import 'package:mockito/annotations.dart';

@GenerateNiceMocks([MockSpec<ServerApi>(), MockSpec<AppDatabase>(), MockSpec<Connectivity>()])
import 'article_repo_test.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late ArticleRepo articleRepo;
  late MockServerApi mockServerApi;
  late MockAppDatabase mockAppDatabase;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockServerApi = MockServerApi();
    mockAppDatabase = MockAppDatabase();
    mockConnectivity = MockConnectivity();
    articleRepo = ArticleRepoImpl(mockServerApi, mockAppDatabase, mockConnectivity);
  });

  group('getArticlesAPI', () {
    test('returns articles from API when connected', () async {
      //arrange
      when(mockConnectivity.checkConnectivity()).thenAnswer((_) async => [ConnectivityResult.wifi]);

      final mockArticles = [
        ArticleDTO(
          author: 'John Doe',
          title: 'Test Article 1',
          description: 'Description 1',
          url: 'https://example.com/article1',
          urlToImage: 'https://example.com/image1.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 1',
          source: SourceDTO(id: '1', name: 'Test Source'),
        ),
        ArticleDTO(
          author: 'Jane Smith',
          title: 'Test Article 2',
          description: 'Description 2',
          url: 'https://example.com/article2',
          urlToImage: 'https://example.com/image2.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 2',
          source: SourceDTO(id: '2', name: 'Test Source'),
        ),
      ];

      when(mockServerApi.getArticles(any)).thenAnswer((_) async => mockArticles);

      //act
      final result = await articleRepo.getArticlesAPI(page: 1);

      //assert
      expect(result.length, equals(mockArticles.length));
      for (int i = 0; i < result.length; i++) {
        expect(result[i].title, equals(mockArticles[i].title));
        expect(result[i].author, equals(mockArticles[i].author));
        expect(result[i].description, equals(mockArticles[i].description));
        expect(result[i].publishedAt, equals(mockArticles[i].publishedAt));
      }
      verify(mockServerApi.getArticles(1)).called(1);
      verifyNever(mockAppDatabase.getArticles());
    });

    test('returns articles from DB when not connected', () async {
      //arrange
      when(mockConnectivity.checkConnectivity()).thenAnswer((_) async => [ConnectivityResult.none]);

      final mockArticles = [
        ArticlesDaoData(
          author: 'John Doe',
          title: 'Test Article 1',
          description: 'Description 1',
          url: 'https://example.com/article1',
          urlToImage: 'https://example.com/image1.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 1',
          id: 1,
          sourceId: '1',
        ),
        ArticlesDaoData(
          author: 'Jane Smith',
          title: 'Test Article 2',
          description: 'Description 2',
          url: 'https://example.com/article2',
          urlToImage: 'https://example.com/image2.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 2',
          id: 2,
          sourceId: '2',
        ),
      ];

      final sourceMock = [
        const SourcesDaoData(
          id: '1',
          name: 'Test Source',
        ),
        const SourcesDaoData(
          id: '2',
          name: 'Test Source',
        ),
      ];

      when(mockAppDatabase.getArticles()).thenAnswer((_) async => mockArticles);
      when(mockAppDatabase.getSources()).thenAnswer((_) async => sourceMock);

      //act
      final result = await articleRepo.getArticlesAPI(page: 1);

      //assert
      expect(result.length, equals(mockArticles.length));
      for (int i = 0; i < result.length; i++) {
        expect(result[i].title, equals(mockArticles[i].title));
        expect(result[i].author, equals(mockArticles[i].author));
        expect(result[i].description, equals(mockArticles[i].description));
        expect(result[i].publishedAt, equals(mockArticles[i].publishedAt));
      }

      verifyNever(mockServerApi.getArticles(any));
      verify(mockAppDatabase.getArticles()).called(1);
    });
  });
}
