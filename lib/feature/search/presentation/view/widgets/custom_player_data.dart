import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/search/data/model/player_model/player_model.dart';

class CustomPlayerData extends StatelessWidget {
  const CustomPlayerData({super.key, required this.player});
  final PlayerModel player;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          player.strPlayer ?? " anonymous player",
          style: Styles.textSemiBold18(context).copyWith(color: Colors.black),
        ),
        const SizedBox(height: 16),
        Text(
          player.strPosition ?? "anonymous position",
          style: Styles.textMedium14(
            context,
          ).copyWith(color: const Color(0xff797979)),
        ),
        const SizedBox(height: 16),
        Text(
          player.strTeam ?? "anonymous Team",
          style: Styles.textMedium14(context).copyWith(color: Colors.black),
        ),
        const SizedBox(height: 16),
        Text(
          player.strNationality ?? "anonymous Nationality",
          style: Styles.textSemiBold21(
            context,
          ).copyWith(color: const Color(0xffD2B5FF)),
        ),
      ],
    );
  }
}
