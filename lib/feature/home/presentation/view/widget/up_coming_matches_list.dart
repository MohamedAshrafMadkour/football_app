import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/up_coming_matches_item.dart';

class UpComingMatchesList extends StatelessWidget {
  const UpComingMatchesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 6, right: 6, bottom: 8),
            child: UpComingMatchItem(),
          );
        },
      ),
    );
  }
}
