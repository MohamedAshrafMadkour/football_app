import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/presentation/view/manager/matches_completed/matches_completed_cubit.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/matched_completed_item_list.dart';

class PopUpView extends StatefulWidget {
  const PopUpView({super.key});

  @override
  State<PopUpView> createState() => _PopUpViewState();
}

class _PopUpViewState extends State<PopUpView> {
  @override
  void initState() {
    BlocProvider.of<MatchesCompletedCubit>(context).getCompletedMatch();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Previous Years',
                style: Styles.textSemiBold21,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            MatchesCompletedList(),
          ],
        ),
      ),
    );
  }
}
