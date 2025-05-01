import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/news/data/model/news_model/news_model.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/custom_cached_image.dart';
import 'package:football_scoore_app/feature/news/presentation/views/widgets/custom_column_text.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsItem extends StatefulWidget {
  const NewsItem({super.key, required this.news});
  final NewsModel news;

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  late Uri _url;

  @override
  void initState() {
    super.initState();
    _url = Uri.parse(widget.news.url ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (!await launchUrl(_url)) {
          throw Exception('Could not launch $_url');
        }
      },
      child: Padding(
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomCachedImage(news: widget.news),
              const SizedBox(width: 12),
              Expanded(child: CustomColumnText(news: widget.news)),
            ],
          ),
        ),
      ),
    );
  }
}
