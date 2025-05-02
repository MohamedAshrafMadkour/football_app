import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/app_image.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/data/model/live_match/score.dart';
import 'package:football_scoore_app/feature/home/details/presentation/view/widget/details_view_body.dart';
import 'package:go_router/go_router.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.match});
  final LiveMatch match;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.imagesPlayground, fit: BoxFit.cover),
        ),
        Positioned.fill(child: Container(color: const Color(0xE6000000))),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 30,
                color: Colors.white,
              ),
            ),
            title: Text('Final Score', style: Styles.textSemiBold18(context)),
            centerTitle: true,
          ),
          body: DetailsViewBody(match: match),
        ),
      ],
    );
  }
}
