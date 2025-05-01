import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_cached_image_completed.dart';
import 'package:go_router/go_router.dart';

class MatchesCompletedItem extends StatelessWidget {
  const MatchesCompletedItem({super.key, required this.match});
  final LiveMatch match;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NavigationRouter.kDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xff2e2e3a),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .24,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    match.home.name,
                    style: Styles.textMedium14,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  CustomCachedImageCompleted(imageUrl: match.home.logoUrl),
                  const SizedBox(height: 4),
                  const Text('Home', style: Styles.textMedium14),
                ],
              ),
            ),
            Text(
              '${match.goal.home} - ${match.goal.away}',
              style: Styles.textSemiBold21,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .24,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    match.away.name,
                    style: Styles.textMedium14,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  CustomCachedImageCompleted(imageUrl: match.away.logoUrl),
                  const SizedBox(height: 4),
                  const Text('Away', style: Styles.textMedium14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
