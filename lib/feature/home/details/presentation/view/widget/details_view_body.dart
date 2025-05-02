import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/core/widget/error_message.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/details/presentation/cubit/manage_static/details_cubit.dart';
import 'package:football_scoore_app/feature/home/details/presentation/view/widget/custom_details_data_row.dart';
import 'package:football_scoore_app/feature/home/details/presentation/view/widget/static_row.dart';

class DetailsViewBody extends StatefulWidget {
  const DetailsViewBody({super.key, required this.match});
  final LiveMatch match;

  @override
  State<DetailsViewBody> createState() => _DetailsViewBodyState();
}

class _DetailsViewBodyState extends State<DetailsViewBody> {
  @override
  void initState() {
    super.initState();
    context.read<DetailsCubit>().getMatchStatics(id: widget.match.fixture.id);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  '${widget.match.status.elapsedTime}',
                  style: Styles.textMedium14(context),
                ),
              ),
              const SizedBox(height: 30),
              CustomDetailsDataRow(match: widget.match),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'StaticMatch',
                  style: Styles.textSemiBold21(context),
                ),
              ),
              const SizedBox(height: 20),
              BlocBuilder<DetailsCubit, DetailsState>(
                builder: (context, state) {
                  if (state is DetailsSuccess) {
                    final team1 = state.details[0];
                    final team2 = state.details[1];

                    final count =
                        team1.statistics.length < team2.statistics.length
                            ? team1.statistics.length
                            : team2.statistics.length;

                    return Column(
                      children: List.generate(count, (index) {
                        final stat1 = team1.statistics[index];
                        final stat2 = team2.statistics[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: StaticRow(
                            statType: stat1.type,
                            team1Value: (stat1.value ?? '-').toString(),
                            team2Value: (stat2.value ?? '-').toString(),
                          ),
                        );
                      }),
                    );
                  } else if (state is DetailsFailure) {
                    return ErrorMessage(errorMessage: state.error);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
