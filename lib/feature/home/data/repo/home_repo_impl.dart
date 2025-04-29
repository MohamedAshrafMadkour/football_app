import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/core/utils/api_service.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_completed/matches_completed.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_live_model/matches_live_model.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl({required this.apiServices});
  @override
  Future<Either<Failure, List<MatchesLiveModel>>> displayLiveMatches() async {
    try {
      final data = await apiServices.get(endPoints: 'fixtures?live=all');
      List<MatchesLiveModel> match = [];
      for (var item in data['fixtures']) {
        match.add(MatchesLiveModel.fromJson(item));
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
