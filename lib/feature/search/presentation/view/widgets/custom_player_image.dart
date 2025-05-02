import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/search/data/model/player_model/player_model.dart';

class CustomPlayerImage extends StatelessWidget {
  const CustomPlayerImage({super.key, required this.player});
  final PlayerModel player;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: player.strCutout ?? " ",
        placeholder:
            (context, url) => const Center(child: CircularProgressIndicator()),
        errorWidget:
            (context, url, error) => const Center(child: Icon(Icons.error)),
      ),
    );
  }
}
