import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
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
          if (matches.isEmpty) {
            return Center(
              child: Text(
                "No matches now",
                style: Styles.textMedium14.copyWith(
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : const Color(0xff2e2e3a),
                ),
              ),
            );
          }
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * .26,
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
