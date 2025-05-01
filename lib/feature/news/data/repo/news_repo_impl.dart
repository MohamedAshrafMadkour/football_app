import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/core/utils/api_service.dart';
import 'package:football_scoore_app/feature/news/data/model/news_model/news_model.dart';
import 'package:football_scoore_app/feature/news/data/repo/news_repo.dart';

class NewsRepoImpl extends NewsRepo {
  final ApiServices apiServices;

  NewsRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<NewsModel>>> getFootballNews() async {
    try {
      final result = await apiServices.getNeWs(
        endPoints: 'everything?q=football+transfers',
      );

      List<NewsModel> news = [];
      for (var item in result['articles']) {
        news.add(NewsModel.fromJson(item));
      }
      return right(news);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
