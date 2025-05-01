import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/feature/news/data/model/news_model/news_model.dart';

abstract class NewsRepo {
  Future<Either<Failure, List<NewsModel>>> getFootballNews();
}
