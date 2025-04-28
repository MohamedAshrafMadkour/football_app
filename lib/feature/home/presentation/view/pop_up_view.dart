import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/matched_completed_item_list.dart';

class PopUpView extends StatelessWidget {
  const PopUpView({super.key});

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
            Text('Matches Completed', style: Styles.textSemiBold21),
            SizedBox(height: 30),
            MatchesCompletedList(),
          ],
        ),
      ),
    );
  }
}
