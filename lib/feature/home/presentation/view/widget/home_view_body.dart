import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/live_match_section.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/up_coming_matches_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: LiveMatchSection()),
        SliverToBoxAdapter(child: SizedBox(height: 30)),
        SliverToBoxAdapter(child: UpComingMatchesSection()),
      ],
    );
  }
}
