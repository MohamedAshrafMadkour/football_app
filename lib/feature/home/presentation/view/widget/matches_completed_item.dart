import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/matches_completed/matches_completed.dart';
import 'package:go_router/go_router.dart';

class MatchesCompletedItem extends StatelessWidget {
  const MatchesCompletedItem({
    super.key,
    required this.match,
    required this.index,
  });
  final MatchesCompleted match;
  final int index;

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              match.response?[index].teams?.home?.name ?? "N/A",
              style: Styles.textMedium14,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        match.response?[index].teams?.home?.logo ??
                        "https://media.api-sports.io/football/teams/51.png",
                    placeholder:
                        (context, url) => const CircularProgressIndicator(),
                    errorWidget:
                        (context, url, error) => const Icon(Icons.error),
                  ),
                ),

                const Text('Home', style: Styles.textMedium14),
              ],
            ),
            const SizedBox(width: 30),
            Text(
              '${match.response?[index].goals?.home ?? 0} - ${match.response?[index].goals?.away ?? 0}',
              style: Styles.textSemiBold21,
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                        match.response?[index].teams?.away?.logo ??
                        "https://media.api-sports.io/football/teams/51.png",

                    placeholder:
                        (context, url) => const CircularProgressIndicator(),
                    errorWidget:
                        (context, url, error) => const Icon(Icons.error),
                  ),
                ),
                const Text('Away', style: Styles.textMedium14),
              ],
            ),
            const SizedBox(width: 10),
            Text(
              match.response?[index].teams?.away?.name ?? "N/A",
              style: Styles.textMedium14,
            ),
          ],
        ),
      ),
    );
  }
}
