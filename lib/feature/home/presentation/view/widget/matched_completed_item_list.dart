import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/matches_completed_item.dart';

class MatchesCompletedList extends StatelessWidget {
  const MatchesCompletedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
            child: MatchesCompletedItem(),
          );
        },
      ),
    );
  }
}
