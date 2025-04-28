import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_icon_button.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(Assets.imagesBall),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Football Score', style: Styles.textSemiBold21),
        actions: const [
          CustomIconButton(icon: Icons.light_mode),
          CustomIconButton(icon: Icons.notifications),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
