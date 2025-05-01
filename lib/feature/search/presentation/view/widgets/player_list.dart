import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/core/widget/error_message.dart';
import 'package:football_scoore_app/feature/search/presentation/manager/search_about_player/search_about_player_cubit.dart';
import 'package:football_scoore_app/feature/search/presentation/view/widgets/custom_player_item.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchAboutPlayerCubit, SearchAboutPlayerState>(
      builder: (context, state) {
        if (state is SearchAboutPlayerSuccess) {
          return IntrinsicHeight(
            child: Column(
              children: List.generate(state.player.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: CustomPlayerItem(player: state.player[index]),
                );
              }),
            ),
          );
        } else if (state is SearchAboutPlayerFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else if (state is SearchAboutPlayerLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Center(
            child: Text('search Now', style: Styles.textSemiBold18(context)),
          );
        }
      },
    );
  }
}
