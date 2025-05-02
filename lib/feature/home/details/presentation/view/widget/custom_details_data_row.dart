import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';

class CustomDetailsDataRow extends StatelessWidget {
  const CustomDetailsDataRow({super.key, required this.match});
  final LiveMatch match;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .15,
                width: MediaQuery.sizeOf(context).width * .3,
                child: CachedNetworkImage(imageUrl: match.home.logoUrl),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        const SizedBox(width: 20),
        Text(
          '${match.goal.home} - ${match.goal.away}',
          style: Styles.textSemiBold18(context),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .15,
                width: MediaQuery.sizeOf(context).width * .3,
                child: CachedNetworkImage(imageUrl: match.away.logoUrl),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
