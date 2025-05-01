import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/news_view_body.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Football',
              style: Styles.textSemiBold21(context).copyWith(
                color:
                    Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
              ),
            ),
            Text(
              'News',
              style: Styles.textSemiBold21(
                context,
              ).copyWith(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const Column(children: [NewsViewBody()]),
    );
  }
}
