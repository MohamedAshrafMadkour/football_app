import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_text_list.dart';

class CustomColumnMatchHome extends StatelessWidget {
  const CustomColumnMatchHome({super.key, required this.match});
  final LiveMatch match;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          match.home.logoUrl,
          fit: BoxFit.fill,
          height: 65,
          width: 65,
        ),
        const SizedBox(height: 20),
        CustomTextList(match: match),
      ],
    );
  }
}

class CustomColumnMatchAway extends StatelessWidget {
  const CustomColumnMatchAway({super.key, required this.match});
  final LiveMatch match;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          match.away.logoUrl,
          fit: BoxFit.fill,
          height: 65,
          width: 65,
        ),
        const SizedBox(height: 20),
        CustomTextList(match: match),
      ],
    );
  }
}
