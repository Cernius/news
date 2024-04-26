import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:news_api/domain/models/article.dart';
import 'package:news_api/domain/models/source.dart';
import 'package:news_api/domain/repositories/article_repo.dart';
import 'package:mockito/annotations.dart';
import 'package:news_api/presentation/news_list/bl/news_list_observer.dart';

@GenerateNiceMocks([MockSpec<ArticleRepo>()])
import 'news_list_observer_test.mocks.dart';

void main() {
  // test random thing

  group('NewsListObserver tests', () {
    late NewsListObserver newsListObserver;
    late MockArticleRepo mockArticleRepo;

    setUp(() {
      mockArticleRepo = MockArticleRepo();
      newsListObserver = NewsListObserver(mockArticleRepo);
    });

    test('getArticles should fetch articles', () async {
      // Arrange
      final articles = [
        Article(
          author: 'John Doe',
          title: 'Test Article 1',
          description: 'Description 1',
          url: 'https://example.com/article1',
          urlToImage: 'https://example.com/image1.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 1',
          source: Source(id: '1', name: 'Test Source'),
        ),
        Article(
          author: 'Jane Smith',
          title: 'Test Article 2',
          description: 'Description 2',
          url: 'https://example.com/article2',
          urlToImage: 'https://example.com/image2.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 2',
          source: Source(id: '2', name: 'Test Source'),
        ),
      ];

      when(mockArticleRepo.getArticlesAPI(page: anyNamed('page')))
          .thenAnswer((_) async => Future.value(articles));

      // Act
      await newsListObserver.getArticles();

      // Assert
      expect(newsListObserver.articles, articles);
    });

    test('getMoreArticles should fetch more articles', () async {
      // Arrange
      final initialArticles = newsListObserver.articles.toList();
      final moreArticles = [
        Article(
          author: 'John Doe',
          title: 'Test Article 3',
          description: 'Description 3',
          url: 'https://example.com/article3',
          urlToImage: 'https://example.com/image3.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 3',
          source: Source(id: '3', name: 'Test Source'),
        ),
        Article(
          author: 'Jane Smith',
          title: 'Test Article 4',
          description: 'Description 4',
          url: 'https://example.com/article4',
          urlToImage: 'https://example.com/image4.jpg',
          publishedAt: DateTime.now(),
          content: 'Content 4',
          source: Source(id: '4', name: 'Test Source'),
        ),
      ];
      when(
        mockArticleRepo.getArticlesAPI(
          page: anyNamed('page'),
        ),
      ).thenAnswer((_) async => moreArticles);

      // Act
      await newsListObserver.getMoreArticles();

      // Assert
      expect(
        newsListObserver.articles,
        containsAllInOrder([
          ...initialArticles,
          ...moreArticles,
        ]),
      );
    });

    test('Error handling: getArticles should set error message on failure', () async {
      // Arrange
      const errorMessage = 'Failed to fetch articles';
      when(
        mockArticleRepo.getArticlesAPI(
          page: anyNamed('page'),
        ),
      ).thenThrow(errorMessage);

      // Act
      await newsListObserver.getArticles();

      // Assert
      expect(newsListObserver.errorMessage, errorMessage);
    });

    test('Error handling: getMoreArticles should set error message on failure', () async {
      // Arrange
      const errorMessage = 'Failed to fetch more articles';
      when(
        mockArticleRepo.getArticlesAPI(
          page: anyNamed('page'),
        ),
      ).thenThrow(errorMessage);

      // Act
      await newsListObserver.getMoreArticles();

      // Assert
      expect(newsListObserver.errorMessage, errorMessage);
    });
  });
}
