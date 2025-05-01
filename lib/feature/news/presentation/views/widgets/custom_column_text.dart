import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/news/data/model/news_model/news_model.dart';

class CustomColumnText extends StatelessWidget {
  const CustomColumnText({super.key, required this.news});
  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Text(
            news.title ?? " ",
            style: Styles.textSemiBold18.copyWith(
              color:
                  Theme.of(context).brightness == Brightness.light
                      ? Colors.black
                      : Colors.white,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
        const SizedBox(height: 4),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'In day ${news.publishedAt.toString().substring(0, 10)}',
            style: Styles.textMedium10.copyWith(
              color:
                  Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
