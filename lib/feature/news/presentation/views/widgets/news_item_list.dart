import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/custom_news_item.dart';

class NewsItemList extends StatelessWidget {
  const NewsItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SizedBox(child: NewsItem());
        },
      ),
    );
  }
}
