part of 'matches_completed_cubit.dart';

sealed class MatchesCompletedState extends Equatable {
  const MatchesCompletedState();

  @override
  List<Object> get props => [];
}

final class MatchesCompletedInitial extends MatchesCompletedState {}

final class MatchesCompletedLoading extends MatchesCompletedState {}

final class MatchesCompletedLoaded extends MatchesCompletedState {
  final List<LiveMatch> match;

  const MatchesCompletedLoaded({required this.match});
}

final class MatchesCompletedFailure extends MatchesCompletedState {
  final String error;

  const MatchesCompletedFailure({required this.error});
}
