import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/service_locator.dart';
import 'package:football_scoore_app/feature/home/data/repo/home_repo_impl.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/live_match/live_matches_cubit.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/matches_completed/matches_completed_cubit.dart';

void main() {
  setupServiceLocator();
  runApp(const FootballApp());
}

class FootballApp extends StatelessWidget {
  const FootballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  MatchesCompletedCubit(getIt.get<HomeRepoImpl>())
                    ..getCompletedMatch(),
        ),
        BlocProvider(
          create:
              (context) =>
                  LiveMatchesCubit(getIt.get<HomeRepoImpl>())..getMatchesLive(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: const Color(0xff181928),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: NavigationRouter.router,
      ),
    );
  }
}
