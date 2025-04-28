import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';
import 'package:football_scoore_app/feature/home/presentation/view/widget/custom_text_list.dart';

class CustomColumnMatch extends StatelessWidget {
  const CustomColumnMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          Assets.imagesBarcelona,
          fit: BoxFit.fill,
          height: 90,
          width: 90,
        ),
        const SizedBox(height: 20),
        const CustomTextList(),
      ],
    );
  }
}
