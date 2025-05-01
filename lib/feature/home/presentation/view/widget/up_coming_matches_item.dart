import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/coming_match/event.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_cached_image_completed.dart';
import 'package:go_router/go_router.dart';

class UpComingMatchItem extends StatelessWidget {
  const UpComingMatchItem({super.key, required this.match});
  final Event match;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NavigationRouter.kDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          color:
              Theme.of(context).brightness == Brightness.light
                  ? const Color(0xffEDEDED)
                  : const Color(0xff2e2e3a),
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
                    match.strHomeTeam ?? " ",
                    style: Styles.textMedium14(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  CustomCachedImageCompleted(
                    imageUrl: match.strHomeTeamBadge ?? " ",
                  ),
                  const SizedBox(height: 4),
                  Text('Home', style: Styles.textMedium14(context)),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  match.dateEvent.toString(),
                  style: Styles.textMedium14(context),
                ),
                Text(
                  match.strTimeLocal.toString().substring(0, 5),
                  style: Styles.textSemiBold21(context),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * .24,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    match.strAwayTeam ?? " ",
                    style: Styles.textMedium14(context),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  CustomCachedImageCompleted(
                    imageUrl: match.strAwayTeamBadge ?? " ",
                  ),
                  const SizedBox(height: 4),
                  Text('Away', style: Styles.textMedium14(context)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
