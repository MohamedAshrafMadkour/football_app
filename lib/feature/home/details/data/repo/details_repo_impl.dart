import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/core/utils/api_service.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/team_static.dart';
import 'package:football_scoore_app/feature/home/details/data/repo/details_repo.dart';

class DetailsRepoImpl extends DetailsRepo {
  final ApiServices apiServices;

  DetailsRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<TeamStatistics>>> displayMatchDetails({
    required int id,
  }) async {
    try {
      final data = await apiServices.get(
        endPoints: 'fixtures/statistics?fixture=$id',
      );
      if (data['response'] == null || data['response'].isEmpty) {
        return left(ServerFailure('No live matches details available.'));
      }

      List<TeamStatistics> details = [];
      for (var item in data['response']) {
        details.add(TeamStatistics.fromJson(item));
      }
      return right(details);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
