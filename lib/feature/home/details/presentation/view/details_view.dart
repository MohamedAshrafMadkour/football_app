import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';
import 'package:football_scoore_app/feature/home/details/presentation/view/widget/details_view_body.dart';
import 'package:go_router/go_router.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.chevron_left, size: 30, color: Colors.white),
        ),
        title: Text('Final Score', style: Styles.textSemiBold18(context)),
        centerTitle: true,
        actions: const [
          Icon(Icons.info, color: Colors.white, size: 24),
          SizedBox(width: 16),
        ],
      ),
      body: const DetailsViewBody(),
    );
  }
}
