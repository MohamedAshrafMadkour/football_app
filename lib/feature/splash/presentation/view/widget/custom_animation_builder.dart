import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';

class CustomAnimationBuilder extends StatelessWidget {
  const CustomAnimationBuilder({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return SlideTransition(
          position: slidingAnimation,
          child: Center(child: Image.asset(Assets.imagesBall)),
        );
      },
      animation: slidingAnimation,
    );
  }
}
