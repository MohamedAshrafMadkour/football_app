import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/widget/error_message.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/live_match/live_matches_cubit.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/live_match_item.dart';

class LiveMatchItemList extends StatelessWidget {
  const LiveMatchItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveMatchesCubit, LiveMatchesState>(
      builder: (context, state) {
        if (state is LiveMatchesLoaded) {
          final matches = state.match;
          if (matches == null || matches.isEmpty) {
            return const Center(child: Text("No matches now"));
          }
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .24,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.match.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: LiveMatchItem(
                    currentIndex: index % 2 == 0,
                    match: state.match[index],
                  ),
                );
              },
            ),
          );
        } else if (state is LiveMatchesFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
