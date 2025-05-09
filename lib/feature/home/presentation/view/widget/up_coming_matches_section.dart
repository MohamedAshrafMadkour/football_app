import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/up_coming_matches_list.dart';

class UpComingMatchesSection extends StatelessWidget {
  const UpComingMatchesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("Up-Coming Matches", style: Styles.textBold18(context)),
        ),
        const SizedBox(height: 20),
        const UpComingMatchesList(),
      ],
    );
  }
}
