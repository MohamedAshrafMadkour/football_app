import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/feature/splash/presentation/view/widget/custom_animation_builder.dart';
import 'package:go_router/go_router.dart';

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
    customNavigation();
    super.initState();
  }

  void customNavigation() {
    Future.delayed(Duration(seconds: 3), () {
      if (context.mounted) {
        GoRouter.of(context).push(NavigationRouter.kHomeView);
      }
    });
  }

  void customAnimationControllerMethod() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
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
    return CustomAnimationBuilder(slidingAnimation: slidingAnimation);
  }
}
