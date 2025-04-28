import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/widgets/main/presentation/views/widget/custom_bottom_navigation.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(bottomNavigationBar: const CustomBottomNavigation());
  }
}
