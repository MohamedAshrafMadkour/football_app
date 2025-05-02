part of 'manage_events_cubit.dart';

sealed class ManageEventsState extends Equatable {
  const ManageEventsState();

  @override
  List<Object> get props => [];
}

final class ManageEventsInitial extends ManageEventsState {}

final class ManageEventsLoading extends ManageEventsState {}

final class ManageEventsSuccess extends ManageEventsState {
  final List<MatchEvent> event;

  const ManageEventsSuccess({required this.event});
}

final class ManageEventsFailure extends ManageEventsState {
  final String error;

  const ManageEventsFailure({required this.error});
}
