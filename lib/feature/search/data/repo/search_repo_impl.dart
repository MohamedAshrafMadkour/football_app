import 'package:dartz/dartz.dart';
import 'package:football_scoore_app/core/error/error.dart';
import 'package:football_scoore_app/core/utils/api_service.dart';
import 'package:football_scoore_app/feature/search/data/model/player_model/player_model.dart';
import 'package:football_scoore_app/feature/search/data/repo/search_repo.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiServices apiServices;

  SearchRepoImpl(this.apiServices);
  //https://www.thesportsdb.com/api/v1/json/3/searchplayers.php?p=harry_kane
  @override
  Future<Either<Failure, List<PlayerModel>>> getSearch({
    required String name,
  }) async {
    try {
      final data = await apiServices.getComingMatch(
        endPoints: 'json/3/searchplayers.php?p=$name',
      );
      if (data['player'] == null || data['player'].isEmpty) {
        return left(ServerFailure('this name does not exist.'));
      }

      List<PlayerModel> player = [];
      for (var item in data['player']) {
        player.add(PlayerModel.fromJson(item));
      }
      return right(player);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
