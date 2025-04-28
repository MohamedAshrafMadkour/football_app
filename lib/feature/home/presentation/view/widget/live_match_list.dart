import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/live_match_item.dart';

class LiveMatchItemList extends StatelessWidget {
  const LiveMatchItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: LiveMatchItem(currentIndex: index % 2 == 0),
          );
        },
      ),
    );
  }
}
