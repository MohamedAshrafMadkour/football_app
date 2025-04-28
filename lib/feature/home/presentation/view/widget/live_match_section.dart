import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_live_match_header.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/live_match_list.dart';

class LiveMatchSection extends StatelessWidget {
  const LiveMatchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomLiveMatchHeader(),
        Padding(padding: EdgeInsets.only(top: 16), child: LiveMatchItemList()),
      ],
    );
  }
}
