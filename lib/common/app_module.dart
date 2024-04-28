import 'package:get_it/get_it.dart';
import 'package:news_api/data/db/database.dart';
import 'package:news_api/data/repositories/article_repo_impl.dart';
import 'package:news_api/data/repositories/preference_repo_impl.dart';
import 'package:news_api/data/server_api.dart';
import 'package:news_api/domain/repositories/article_repo.dart';
import 'package:news_api/domain/repositories/preference_repo.dart';
import 'package:news_api/presentation/news_list/bl/news_list_observer.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
final getIt = GetIt.instance;

void setupDependencyInjection() {
  getIt.registerSingleton<PreferenceRepo>(
    PreferenceRepoImpl(),
  );
  getIt.registerSingleton<ServerApi>(
    ServerApi(
      preferenceRepo: getIt<PreferenceRepo>(),
    ),
  );
  getIt.registerSingleton<AppDatabase>(AppDatabase());

  getIt.registerSingleton<ArticleRepo>(
    ArticleRepoImpl(
      getIt<ServerApi>(),
      getIt<AppDatabase>(),
      Connectivity(),
    ),
  );

  getIt.registerFactory<NewsListObserver>(
    () => NewsListObserver(
      getIt<ArticleRepo>(),
    ),
  );
}
