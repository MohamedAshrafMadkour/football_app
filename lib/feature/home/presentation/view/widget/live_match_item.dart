import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_column_match.dart';
import 'package:go_router/go_router.dart';

class LiveMatchItem extends StatelessWidget {
  const LiveMatchItem({
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
      child: AspectRatio(
        aspectRatio: 2.6 / 1.9,
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
                Text(
                  '${match.fixture.status?.elapsed}',
                  style: Styles.textMedium13,
                ),
                Row(
                  children: [
                    CustomColumnMatchHome(match: match),
                    const SizedBox(width: 28),
                    Text(
                      '${match.goal.home} - ${match.goal.away}',
                      style: Styles.textSemiBold21,
                    ),
                    const SizedBox(width: 28),
                    CustomColumnMatchAway(match: match),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
