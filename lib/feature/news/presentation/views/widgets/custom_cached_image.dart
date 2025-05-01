import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:football_scoore_app/feature/news/data/model/news_model/news_model.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({super.key, required this.news});
  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: news.urlToImage ?? " ",
          placeholder:
              (context, url) =>
                  const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}

//AspectRatio(

//const Color(0xff2e2e3a),
//             aspectRatio: 2.9 / 3.5,
// child:
//           )
