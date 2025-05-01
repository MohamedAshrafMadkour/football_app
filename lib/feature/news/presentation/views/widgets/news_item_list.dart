import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_scoore_app/core/widget/error_message.dart';
import 'package:football_scoore_app/feature/news/presentation/views/manager/news_cubit/news_cubit.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/custom_news_item.dart';

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
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
