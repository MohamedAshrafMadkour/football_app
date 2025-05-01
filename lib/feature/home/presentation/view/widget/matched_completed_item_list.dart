import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/widget/error_message.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/matches_completed/matches_completed_cubit.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/matches_completed_item.dart';

class MatchesCompletedList extends StatelessWidget {
  const MatchesCompletedList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchesCompletedCubit, MatchesCompletedState>(
      builder: (context, state) {
        if (state is MatchesCompletedLoaded) {
          return IntrinsicHeight(
            child: Column(
              children: List.generate(state.match.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                  child: MatchesCompletedItem(match: state.match[index]),
                );
              }),
            ),
          );
        } else if (state is MatchesCompletedFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
