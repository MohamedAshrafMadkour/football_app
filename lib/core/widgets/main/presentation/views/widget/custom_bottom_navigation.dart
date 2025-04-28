import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/widgets/main/presentation/views/widget/custom_icon_navigation.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      height: 85,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xff222232)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomIconNavigation(icon: Icons.home),
          CustomIconNavigation(icon: Icons.newspaper),
          CustomIconNavigation(icon: Icons.settings),
          CustomIconNavigation(icon: Icons.search),
        ],
      ),
    );
  }
}
