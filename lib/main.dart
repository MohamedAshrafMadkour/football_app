import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/manager/cubit/manage_state_cubit.dart';
import 'package:football_scoore_app/core/utils/observe.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/service_locator.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/coming_match/coming_match_cubit.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/live_match/live_matches_cubit.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/matches_completed/matches_completed_cubit.dart';
import 'package:football_scoore_app/feature/news/data/repo/news_repo_impl.dart';
import 'package:football_scoore_app/feature/news/presentation/views/manager/news_cubit/news_cubit.dart';
import 'package:football_scoore_app/feature/search/data/repo/search_repo_impl.dart';
import 'package:football_scoore_app/feature/search/presentation/manager/search_about_player/search_about_player_cubit.dart';

//https://newsapi.org/v2/everything?q=football+transfers&apiKey=1944b44380b345dba309bc44223f0aa2
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserve();
  setupServiceLocator();
  runApp(
    BlocProvider(
      create: (context) => ManageStateCubit()..getLight(),
      child: const FootballApp(),
    ),
  );
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MatchesCompletedCubit(getIt.get<HomeRepoImpl>()),
        ),
        BlocProvider(
          create:
              (context) =>
                  LiveMatchesCubit(getIt.get<HomeRepoImpl>())..getMatchesLive(),
        ),
        BlocProvider(
          create: (context) => NewsCubit(getIt.get<NewsRepoImpl>())..getNews(),
        ),
        BlocProvider(
          create:
              (context) =>
                  ComingMatchCubit(getIt.get<HomeRepoImpl>())
                    ..getComingMatches(),
        ),
        BlocProvider(
          create:
              (context) => SearchAboutPlayerCubit(getIt.get<SearchRepoImpl>()),
        ),
      ],
      child: BlocBuilder<ManageStateCubit, ThemeMode>(
        builder: (context, state) {
          return MaterialApp.router(
            themeMode: state,
            theme: ThemeData.light().copyWith(
              textTheme: ThemeData.dark().textTheme.apply(
                fontFamily: 'Poppins',
              ),
            ),
            darkTheme: ThemeData.dark().copyWith(
              textTheme: ThemeData.light().textTheme.apply(
                fontFamily: 'Poppins',
              ),
            ),
            debugShowCheckedModeBanner: false,
            routerConfig: NavigationRouter.router,
          );
        },
      ),
    );
  }
}
