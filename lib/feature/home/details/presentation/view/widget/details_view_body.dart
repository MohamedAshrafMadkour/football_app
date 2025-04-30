import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('60 : 22', style: Styles.textMedium13),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 28),
              Text('2 - 2', style: Styles.textSemiBold21),
              SizedBox(width: 28),
            ],
          ),
        ],
      ),
    );
  }
}
