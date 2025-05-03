import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/team_static.dart';

abstract class DetailsRepo {
  Future<Either<Failure, List<TeamStatistics>>> displayMatchDetails({
    required int id,
  });
}
