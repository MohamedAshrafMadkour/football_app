import 'package:flutter/material.dart';
import 'package:football_scoore_app/core/utils/styles.dart';

class CustomColumnText extends StatelessWidget {
  const CustomColumnText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Text(
            'Champions League 2022-23 draw: group stage analysis and predictions',
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
            '29 Aug 2022',
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
