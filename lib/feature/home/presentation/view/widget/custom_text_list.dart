import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';

class CustomTextList extends StatelessWidget {
  const CustomTextList({super.key, required this.match});
  final LiveMatch match;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: Text(match.fixture.referee ?? "", style: Styles.textMedium14),
        ),
      ),
    );
  }
}
