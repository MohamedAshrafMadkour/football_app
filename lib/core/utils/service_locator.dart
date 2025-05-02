import 'package:dio/dio.dart';
import 'package:football_scoore_app/core/utils/api_service.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:football_scoore_app/feature/home/details/data/repo/details_repo_impl.dart';
import 'package:football_scoore_app/feature/news/data/repo/news_repo_impl.dart';
import 'package:football_scoore_app/feature/search/data/repo/search_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServices>()));
  getIt.registerSingleton<NewsRepoImpl>(NewsRepoImpl(getIt.get<ApiServices>()));
  getIt.registerSingleton<SearchRepoImpl>(
    SearchRepoImpl(getIt.get<ApiServices>()),
  );
  getIt.registerSingleton<DetailsRepoImpl>(
    DetailsRepoImpl(getIt.get<ApiServices>()),
  );
}
