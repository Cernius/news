
import 'package:dio/dio.dart';
import 'package:news_api/data/models/article_dto.dart';
import 'package:news_api/domain/repositories/preference_repo.dart';

class ServerApi {
  final PreferenceRepo _preferenceRepo;

  final Dio _dio = Dio();

  ServerApi({required PreferenceRepo preferenceRepo}) : _preferenceRepo = preferenceRepo;

  String get serverUrl => _preferenceRepo.getServerUrl();

  Map<String, dynamic> get queryParameters => {
        'country': 'us',
        'apiKey': _preferenceRepo.getApiToken(),
      };

  Future<Response> get(String path, {Map<String, dynamic>? query}) async {
    final Map<String, dynamic> queryParams = Map.from(queryParameters)..addAll(query ?? {});
    return _dio.get(
      '$serverUrl/$path',
      queryParameters: queryParams,
    );
  }

  Future<Response> post(String path, dynamic data) async {
    return _dio.post(path, data: data);
  }

  Future<Response> put(String path, dynamic data) async {
    return _dio.put(path, data: data);
  }

  Future<Response> delete(String path) async {
    return _dio.delete(path);
  }

  Future<List<ArticleDTO>> getArticles(int page) async {
    final query = {'page': page};
    final response = await get('top-headlines', query: query);
    final List<dynamic> articles = response.data['articles'];
    return articles.map((e) => ArticleDTO.fromJson(e)).toList();
  }
}
