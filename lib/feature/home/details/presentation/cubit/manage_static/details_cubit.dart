import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/team_static.dart';
import 'package:football_scoore_app/feature/home/details/data/repo/details_repo.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  DetailsCubit(this.detailsRepo) : super(DetailsInitial());

  final DetailsRepo detailsRepo;
  Future<void> getMatchStatics({required int id}) async {
    emit(DetailsLoading());
    var match = await detailsRepo.displayMatchDetails(id: id);
    match.fold(
      (failure) {
        emit(DetailsFailure(error: failure.errorMessage));
      },
      (details) {
        final validStats =
            details.where((team) => team.statistics.isNotEmpty).toList();

        if (validStats.length < 2) {
          emit(
            const DetailsFailure(
              error: 'No statistics available for this match.',
            ),
          );
        } else {
          emit(DetailsSuccess(details: validStats));
        }
      },
    );
  }
}
