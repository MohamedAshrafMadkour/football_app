import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo.dart';

part 'live_matches_state.dart';

class LiveMatchesCubit extends Cubit<LiveMatchesState> {
  LiveMatchesCubit(this.repoHome) : super(LiveMatchesInitial());
  final HomeRepo repoHome;
  Future<void> getMatchesLive() async {
    emit(LiveMatchesLoading());
    var match = await repoHome.displayLiveMatches();
    match.fold(
      (failure) {
        emit(LiveMatchesFailure(error: failure.errorMessage));
      },
      (matches) {
        if (matches.isEmpty) {
          emit(const LiveMatchesFailure(error: 'No live matches available.'));
        } else {
          emit(LiveMatchesLoaded(match: matches));
        }
      },
    );
  }
}
