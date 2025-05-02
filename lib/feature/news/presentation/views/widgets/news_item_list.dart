import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/widget/error_message.dart';
import 'package:football_scoore_app/feature/news/presentation/views/manager/news_cubit/news_cubit.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/custom_news_item.dart';
import 'package:shimmer/shimmer.dart';

class NewsItemList extends StatelessWidget {
  const NewsItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.news.length,
              itemBuilder: (context, index) {
                return SizedBox(child: NewsItem(news: state.news[index]));
              },
            ),
          );
        } else if (state is NewsFailure) {
          return ErrorMessage(errorMessage: state.error);
        } else if (state is NewsLoading) {
          return Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  period: const Duration(milliseconds: 1200),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                );
              },
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
