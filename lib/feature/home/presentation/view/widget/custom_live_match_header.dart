import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_icon_snake_bar.dart';

class CustomLiveMatchHeader extends StatefulWidget {
  const CustomLiveMatchHeader({super.key});

  @override
  State<CustomLiveMatchHeader> createState() => _CustomLiveMatchHeaderState();
}

class _CustomLiveMatchHeaderState extends State<CustomLiveMatchHeader> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Live Match', style: Styles.textSemiBold21(context)),
              const CustomIconAndSnakeBar(),
            ],
          ),
        ),
      ],
    );
  }
}
