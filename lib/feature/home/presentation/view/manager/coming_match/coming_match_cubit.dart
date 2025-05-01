import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/coming_match/event.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo.dart';

part 'coming_match_state.dart';

class ComingMatchCubit extends Cubit<ComingMatchState> {
  ComingMatchCubit(this.repoHome) : super(ComingMatchInitial());
  final HomeRepo repoHome;
  Future<void> getComingMatches() async {
    emit(ComingMatchLoading());
    var match = await repoHome.displayMatchesUpComing();
    match.fold(
      (failure) {
        emit(ComingMatchFailure(error: failure.errorMessage));
      },
      (matches) {
        if (matches.isEmpty) {
          emit(const ComingMatchFailure(error: 'No coming matches available.'));
        } else {
          emit(ComingMatchSuccess(comingMatch: matches));
        }
      },
    );
  }
}
