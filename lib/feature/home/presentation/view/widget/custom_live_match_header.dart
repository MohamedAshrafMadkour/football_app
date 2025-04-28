import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class CustomLiveMatchHeader extends StatelessWidget {
  const CustomLiveMatchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Live Match', style: Styles.textSemiBold21),
          IconButton(
            onPressed: () {},
            icon: Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
