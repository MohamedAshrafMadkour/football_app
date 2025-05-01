part of 'search_about_player_cubit.dart';

sealed class SearchAboutPlayerState extends Equatable {
  const SearchAboutPlayerState();

  @override
  List<Object> get props => [];
}

final class SearchAboutPlayerInitial extends SearchAboutPlayerState {}

final class SearchAboutPlayerLoading extends SearchAboutPlayerState {}

final class SearchAboutPlayerSuccess extends SearchAboutPlayerState {
  final List<PlayerModel> player;

  const SearchAboutPlayerSuccess({required this.player});
}

final class SearchAboutPlayerFailure extends SearchAboutPlayerState {
  final String error;

  const SearchAboutPlayerFailure({required this.error});
}
