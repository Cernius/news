import 'package:news_api/domain/repositories/preference_repo.dart';

class PreferenceRepoImpl extends PreferenceRepo {
  @override
  String getApiToken() {
    //Typically, this would be stored in a secure storage,
    //but for the sake of simplicity, we are hardcoding it here.
    return 'cf12d1d7e83d4e40b2d97dfd6edefbc7';
  }

  @override
  String getServerUrl() {
    return 'https://newsapi.org/v2/';
  }
}
