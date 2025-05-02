import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class StaticRow extends StatelessWidget {
  const StaticRow({
    super.key,
    required this.statType,
    required this.team1Value,
    required this.team2Value,
  });
  final String statType;
  final String team1Value;
  final String team2Value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(team1Value, style: Styles.textMedium14(context)),
        Text(
          statType,
          style: Styles.textRegular16(
            context,
          ).copyWith(color: const Color(0xff797979)),
        ),
        Text(team2Value, style: Styles.textMedium14(context)),
      ],
    );
  }
}
