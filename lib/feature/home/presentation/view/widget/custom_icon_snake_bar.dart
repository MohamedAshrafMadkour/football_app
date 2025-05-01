import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/router.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class CustomIconAndSnakeBar extends StatelessWidget {
  const CustomIconAndSnakeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: InkWell(
              onTap: () {
                GoRouter.of(context).push(NavigationRouter.kPopUpView);
              },
              child: const Center(
                child: Text('Matches Finished', style: Styles.textMedium14),
              ),
            ),
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.7,
              left: MediaQuery.of(context).size.width * 0.6,
              right: 10,
            ),
            backgroundColor: const Color(0xff2e2e3a),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
      },
      icon: Transform.rotate(
        angle: -1.57079633,
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color:
              Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : const Color(0xff2e2e3a),
        ),
      ),
    );
  }
}
