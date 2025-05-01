import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/custom_cached_image.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/custom_column_text.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: MediaQuery.sizeOf(context).height * .15,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color:
              Theme.of(context).brightness == Brightness.light
                  ? const Color(0xffEDEDED)
                  : const Color(0xff2e2e3a),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomCachedImage(),
            SizedBox(width: 12),
            Expanded(child: CustomColumnText()),
          ],
        ),
      ),
    );
  }
}
