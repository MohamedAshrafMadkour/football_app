import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/core/utils/api_service.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<LiveMatch>>> displayLiveMatches() async {
    try {
      final data = await apiServices.get(endPoints: 'fixtures?live=all');
      if (data['response'] == null || data['response'].isEmpty) {
        return left(ServerFailure('No live matches available.'));
      }

      List<LiveMatch> match = [];
      for (var item in data['response']) {
        match.add(LiveMatch.fromJson(item));
      }
      return right(match);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
  //https://v3.football.api-sports.io/fixtures?league=39&season=2021&from=2021-07-01&to=2023-10-31&timezone=Europe/England

  @override
  Future<Either<Failure, List<LiveMatch>>> displayMatchesCompleted() async {
    try {
      final data = await apiServices.get(
        endPoints:
            'fixtures?league=39&season=2021&from=2021-07-01&to=2023-10-31&timezone=Europe/England',
      );

      if (data['response'] == null || (data['response']).isEmpty) {
        return left(ServerFailure('No completed matches found.'));
      }

      List<LiveMatch> matches = [];
      for (var item in data['response']) {
        if (item != null) {
          matches.add(LiveMatch.fromJson(item));
        }
      }
      return right(matches);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<LiveMatch>>> displayMatchesUpComing() {
    throw UnimplementedError();
  }
}

//3f616994be8f558f018d9f765b334d3a125e96f18aef60da32187a7f6ed81c8a
