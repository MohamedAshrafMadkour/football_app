import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/core/utils/api_service.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_completed/matches_completed.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<LiveMatch>>> displayLiveMatches() async {
    try {
      final data = await apiServices.get(endPoints: 'fixtures?live=all');
      if (data['fixtures'] == null || data['fixtures'].isEmpty) {
        return left(ServerFailure('No live matches available.'));
      }

      List<LiveMatch> match = [];
      for (var item in data['fixtures']) {
        match.add(LiveMatch.fromJson(item));
      }
      return right(match);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MatchesCompleted>>>
  displayMatchesCompleted() async {
    try {
      final data = await apiServices.get(
        endPoints: 'fixtures?season=2022&status=FT&league=39',
      );
      List<MatchesCompleted> match = [];
      for (var item in data['fixtures']) {
        match.add(MatchesCompleted.fromJson(item));
      }
      return right(match);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<MatchesCompleted>>> displayMatchesUpComing() {
    throw UnimplementedError();
  }
}
//3f616994be8f558f018d9f765b334d3a125e96f18aef60da32187a7f6ed81c8a