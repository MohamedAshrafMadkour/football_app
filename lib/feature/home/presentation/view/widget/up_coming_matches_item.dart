import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class UpComingMatchItem extends StatelessWidget {
  const UpComingMatchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            children: [
              Image.asset(Assets.imagesBarcelona, height: 60, width: 60),
              const Text('home', style: Styles.textMedium14),
            ],
          ),
          const SizedBox(width: 30),
          const Text('2 - 2', style: Styles.textSemiBold21),
          const SizedBox(width: 30),
          Column(
            children: [
              Image.asset(Assets.imagesCity, height: 60, width: 60),
              const Text('away', style: Styles.textMedium14),
            ],
          ),
          const SizedBox(width: 10),
          const Text('Man City', style: Styles.textMedium14),
        ],
      ),
    );
  }
}
