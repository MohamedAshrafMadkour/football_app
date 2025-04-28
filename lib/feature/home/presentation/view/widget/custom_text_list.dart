import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class CustomTextList extends StatelessWidget {
  const CustomTextList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2,
        (index) => const Padding(
          padding: EdgeInsets.only(bottom: 4),
          child: Text('Depay 79’', style: Styles.textMedium14),
        ),
      ),
    );
  }
}
