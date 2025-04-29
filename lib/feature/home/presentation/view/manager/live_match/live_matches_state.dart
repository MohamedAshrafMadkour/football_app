part of 'live_matches_cubit.dart';

sealed class LiveMatchesState extends Equatable {
  const LiveMatchesState();

  @override
  List<Object> get props => [];
}

final class LiveMatchesInitial extends LiveMatchesState {}

final class LiveMatchesLoading extends LiveMatchesState {}

final class LiveMatchesLoaded extends LiveMatchesState {
  final List<MatchesLiveModel> match;

  const LiveMatchesLoaded({required this.match});
}

final class LiveMatchesFailure extends LiveMatchesState {
  final String error;

  const LiveMatchesFailure({required this.error});
}
