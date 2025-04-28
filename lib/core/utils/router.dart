import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/widgets/main/presentation/views/main_view.dart';
import 'package:football_scoore_app/feature/home/presentation/view/home_view.dart';
import 'package:football_scoore_app/feature/home/presentation/view/pop_up_view.dart';
import 'package:football_scoore_app/feature/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class NavigationRouter {
  static const kHomeView = '/homeView';
  static const kMainView = '/mainView';
  static const kPopUpView = '/popUpView';
  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kPopUpView,
        builder: (BuildContext context, GoRouterState state) {
          return const PopUpView();
        },
      ),
      GoRoute(
        path: kMainView,
        builder: (BuildContext context, GoRouterState state) {
          return const MainView();
        },
      ),
    ],
  );
}
