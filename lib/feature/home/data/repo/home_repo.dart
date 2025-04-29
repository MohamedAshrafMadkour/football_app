import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_completed/matches_completed.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_live_model/matches_live_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MatchesCompleted>>> displayMatchesCompleted();
  Future<Either<Failure, List<MatchesLiveModel>>> displayLiveMatches();
  Future<Either<Failure, List<MatchesCompleted>>> displayMatchesUpComing();
}
