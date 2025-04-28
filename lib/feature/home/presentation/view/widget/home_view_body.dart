import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/live_match_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [SliverToBoxAdapter(child: LiveMatchSection())],
    );
  }
}
