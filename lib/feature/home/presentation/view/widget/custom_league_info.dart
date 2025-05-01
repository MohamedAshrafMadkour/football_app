import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';

class CustomLeagueInfo extends StatelessWidget {
  const CustomLeagueInfo({super.key, required this.match});

  final LiveMatch match;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(match.league.logo),
          ),
        ),
        const SizedBox(width: 8),
        Text(match.league.name, style: Styles.textMedium14(context)),
      ],
    );
  }
}
