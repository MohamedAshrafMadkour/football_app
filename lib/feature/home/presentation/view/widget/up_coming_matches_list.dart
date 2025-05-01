import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/widget/error_message.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/coming_match/coming_match_cubit.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/up_coming_matches_item.dart';

class UpComingMatchesList extends StatelessWidget {
  const UpComingMatchesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComingMatchCubit, ComingMatchState>(
      builder: (context, state) {
        if (state is ComingMatchSuccess) {
          return IntrinsicHeight(
            child: Column(
              children: List.generate(state.comingMatch.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6, bottom: 8),
                  child: UpComingMatchItem(match: state.comingMatch[index]),
                );
              }),
            ),
          );
        } else if (state is ComingMatchFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
