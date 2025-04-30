import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_completed/matches_completed.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MatchesCompleted>>> displayMatchesCompleted();
  Future<Either<Failure, List<LiveMatch>>> displayLiveMatches();
  Future<Either<Failure, List<MatchesCompleted>>> displayMatchesUpComing();
}
