import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/search/data/model/player_model/player_model.dart';
import 'package:football_scoore_app/feature/search/presentation/view/widgets/custom_player_data.dart';
import 'package:football_scoore_app/feature/search/presentation/view/widgets/custom_player_image.dart';

class CustomPlayerItem extends StatelessWidget {
  const CustomPlayerItem({super.key, required this.player});
  final PlayerModel player;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:
            Theme.of(context).brightness == Brightness.dark
                ? const Color(0xff2e2e3a)
                : Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: CustomPlayerData(player: player)),
          CustomPlayerImage(player: player),
        ],
      ),
    );
  }
}
