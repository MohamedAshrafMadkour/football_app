import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_column_match.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_league_info.dart';
import 'package:go_router/go_router.dart';

class LiveMatchDarkAndWhite extends StatelessWidget {
  const LiveMatchDarkAndWhite({
    super.key,
    required this.currentIndex,
    required this.match,
  });
  final bool currentIndex;
  final LiveMatch match;
  @override
  Widget build(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? LiveMatchItemDark(currentIndex: currentIndex, match: match)
        : LiveMatchItemLight(currentIndex: currentIndex, match: match);
  }
}

class LiveMatchItemDark extends StatelessWidget {
  const LiveMatchItemDark({
    super.key,
    required this.currentIndex,
    required this.match,
  });
  final bool currentIndex;
  final LiveMatch match;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NavigationRouter.kDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient:
              currentIndex
                  ? LinearGradient(
                    colors: [Colors.indigo.shade500, Colors.purple.shade300],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                  : const LinearGradient(
                    colors: [Color(0xff2e2e3a), Color(0xff2e2e3a)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  '${match.status.elapsedTime}',
                  style: Styles.textMedium14(context),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomColumnMatchHome(match: match),
                  const SizedBox(width: 28),
                  Text(
                    '${match.goal.home} - ${match.goal.away}',
                    style: Styles.textSemiBold21(context),
                  ),
                  const SizedBox(width: 28),
                  CustomColumnMatchAway(match: match),
                ],
              ),
              const SizedBox(height: 20),
              CustomLeagueInfo(match: match),
              const SizedBox(height: 6),
              Text(match.league.country, style: Styles.textMedium14(context)),
            ],
          ),
        ),
      ),
    );
  }
}

class LiveMatchItemLight extends StatelessWidget {
  const LiveMatchItemLight({
    super.key,
    required this.currentIndex,
    required this.match,
  });
  final bool currentIndex;
  final LiveMatch match;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NavigationRouter.kDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient:
              currentIndex
                  ? const LinearGradient(
                    colors: [Color(0xffEDEDED), Color(0xffEDEDED)],

                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                  : LinearGradient(
                    colors: [Colors.teal.shade100, Colors.teal.shade100],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  '${match.status.elapsedTime}',
                  style: Styles.textMedium14(context),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomColumnMatchHome(match: match),
                  const SizedBox(width: 28),
                  Text(
                    '${match.goal.home} - ${match.goal.away}',
                    style: Styles.textSemiBold21(context),
                  ),
                  const SizedBox(width: 28),
                  CustomColumnMatchAway(match: match),
                ],
              ),
              const SizedBox(height: 20),
              CustomLeagueInfo(match: match),
              const SizedBox(height: 6),
              Text(match.league.country, style: Styles.textMedium14(context)),
            ],
          ),
        ),
      ),
    );
  }
}
