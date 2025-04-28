import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> slidingAnimation;
  late AnimationController animationController;
  @override
  void initState() {
    customAnimationControllerMethod();
    super.initState();
  }

  void customAnimationControllerMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 12),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
