import 'package:get_it/get_it.dart';
import 'package:news_api/data/repositories/article_repo_impl.dart';
import 'package:news_api/data/repositories/preference_repo_impl.dart';
import 'package:news_api/data/server_api.dart';
import 'package:news_api/domain/repositories/article_repo.dart';
import 'package:news_api/domain/repositories/preference_repo.dart';
import 'package:news_api/presentation/news_list/bl/news_list_observer.dart';

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
  getIt.registerSingleton<ArticleRepo>(
    ArticleRepoImpl(getIt<ServerApi>()),
  );

  getIt.registerFactory<NewsListObserver>(() => NewsListObserver());
}
