import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/events.dart';
import 'package:football_scoore_app/feature/home/details/data/repo/details_repo.dart';

part 'manage_events_state.dart';

class ManageEventsCubit extends Cubit<ManageEventsState> {
  ManageEventsCubit(this.detailsRepo) : super(ManageEventsInitial());
  final DetailsRepo detailsRepo;
  Future<void> getMatchEvents({required int id}) async {
    emit(ManageEventsLoading());
    var match = await detailsRepo.displayEventsDetails(id: id);
    match.fold(
      (failure) {
        emit(ManageEventsFailure(error: failure.errorMessage));
      },
      (event) {
        if (event.isEmpty) {
          emit(
            const ManageEventsFailure(error: 'No live match events available.'),
          );
        } else {
          emit(ManageEventsSuccess(event: event));
        }
      },
    );
  }
}
