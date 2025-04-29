import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class UpComingMatchItem extends StatelessWidget {
  const UpComingMatchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(NavigationRouter.kDetailsView);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff2e2e3a),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Man United', style: Styles.textMedium14),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.imagesBarcelona, height: 50, width: 50),
                const Text('home', style: Styles.textMedium14),
              ],
            ),
            const SizedBox(width: 30),
            const Text('2 - 2', style: Styles.textSemiBold21),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.imagesCity, height: 50, width: 50),
                const Text('away', style: Styles.textMedium14),
              ],
            ),
            const SizedBox(width: 10),
            const Text('Man City', style: Styles.textMedium14),
          ],
        ),
      ),
    );
  }
}
