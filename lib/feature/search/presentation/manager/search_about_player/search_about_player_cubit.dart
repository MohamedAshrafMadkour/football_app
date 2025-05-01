import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/search/data/model/player_model/player_model.dart';
import 'package:football_scoore_app/feature/search/data/repo/search_repo.dart';

part 'search_about_player_state.dart';

class SearchAboutPlayerCubit extends Cubit<SearchAboutPlayerState> {
  SearchAboutPlayerCubit(this.searchRepo) : super(SearchAboutPlayerInitial());
  final SearchRepo searchRepo;
  Future<void> getPlayerSearch({required String playerName}) async {
    emit(SearchAboutPlayerLoading());
    var player = await searchRepo.getSearch(name: playerName);
    player.fold(
      (failure) {
        emit(SearchAboutPlayerFailure(error: failure.errorMessage));
      },
      (players) {
        if (players.isEmpty) {
          emit(
            const SearchAboutPlayerFailure(error: 'this player is not exist.'),
          );
        } else {
          emit(SearchAboutPlayerSuccess(player: players));
        }
      },
    );
  }

  void emptyRes() {
    emit(SearchAboutPlayerInitial());
  }
}
