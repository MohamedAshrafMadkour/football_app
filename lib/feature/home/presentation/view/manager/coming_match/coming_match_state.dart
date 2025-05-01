part of 'coming_match_cubit.dart';

sealed class ComingMatchState extends Equatable {
  const ComingMatchState();

  @override
  List<Object> get props => [];
}

final class ComingMatchInitial extends ComingMatchState {}

final class ComingMatchLoading extends ComingMatchState {}

final class ComingMatchSuccess extends ComingMatchState {
  final List<Event> comingMatch;

  const ComingMatchSuccess({required this.comingMatch});
}

final class ComingMatchFailure extends ComingMatchState {
  final String error;

  const ComingMatchFailure({required this.error});
}
