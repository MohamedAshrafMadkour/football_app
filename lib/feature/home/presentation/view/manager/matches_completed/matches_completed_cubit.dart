import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo.dart';

part 'matches_completed_state.dart';

class MatchesCompletedCubit extends Cubit<MatchesCompletedState> {
  MatchesCompletedCubit(this.repoHome) : super(MatchesCompletedInitial());
  final HomeRepo repoHome;

  Future<void> getCompletedMatch() async {
    emit(MatchesCompletedLoading());
    var match = await repoHome.displayMatchesCompleted();
    match.fold(
      (failure) {
        emit(MatchesCompletedFailure(error: failure.errorMessage));
      },
      (match) {
        if (match.isEmpty) {
          emit(
            const MatchesCompletedFailure(error: 'No live matches complete.'),
          );
        } else {
          emit(MatchesCompletedLoaded(match: match));
        }
      },
    );
  }
}
