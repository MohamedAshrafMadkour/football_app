import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class CustomIconAndSnakeBar extends StatelessWidget {
  const CustomIconAndSnakeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Center(
              child: Text('Matches Finished', style: Styles.textMedium14),
            ),
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.only(bottom: 700, left: 250, right: 20),
            backgroundColor: const Color(0xff2e2e3a),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      },
      icon: Transform.rotate(
        angle: -1.57079633,
        child: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
