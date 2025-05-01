import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_scoore_app/feature/news/data/model/news_model/news_model.dart';
import 'package:football_scoore_app/feature/news/data/repo/news_repo.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.newsRepo) : super(NewsInitial());
  final NewsRepo newsRepo;

  Future<void> getNews() async {
    emit(NewsLoading());
    var news = await newsRepo.getFootballNews();
    news.fold(
      (failure) => emit(NewsFailure(error: failure.errorMessage)),
      (match) => emit(NewsSuccess(news: match)),
    );
  }
}
