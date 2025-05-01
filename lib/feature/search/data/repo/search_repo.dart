import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/feature/search/data/model/player_model/player_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<PlayerModel>>> getSearch({required String name});
}
